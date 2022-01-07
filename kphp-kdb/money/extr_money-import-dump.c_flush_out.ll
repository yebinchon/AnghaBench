; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_flush_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_flush_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i32 0, align 4
@wst = common dso_local global i32 0, align 4
@WB = common dso_local global i32 0, align 4
@tot_crc32 = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error writing to %s: %d bytes written out of %d: %m\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%d bytes written to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @wptr, align 4
  %4 = load i32, i32* @wst, align 4
  %5 = sub nsw i32 %3, %4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @WB, align 4
  store i32 %13, i32* @wst, align 4
  store i32 %13, i32* @wptr, align 4
  br label %50

14:                                               ; preds = %0
  %15 = load i32, i32* @wst, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @tot_crc32, align 4
  %18 = call i32 @crc32_partial(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* @tot_crc32, align 4
  %19 = load i32, i32* @targ_fd, align 4
  %20 = load i32, i32* @wst, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @wr_bytes, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* @wr_bytes, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @targ_fname, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i32 %37)
  %39 = call i32 @exit(i32 3) #3
  unreachable

40:                                               ; preds = %29
  %41 = load i64, i64* @verbosity, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i8*, i8** @targ_fname, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @WB, align 4
  store i32 %49, i32* @wst, align 4
  store i32 %49, i32* @wptr, align 4
  br label %50

50:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc32_partial(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
