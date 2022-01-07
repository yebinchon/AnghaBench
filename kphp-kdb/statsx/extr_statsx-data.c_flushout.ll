; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Buff = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@newidx_fd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"(s,w,BUFFSIZE) = (%d %d %d)\0A\00", align 1
@BUFFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"errno = %d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @Buff, align 8
  %5 = load i64, i64* @wptr, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %40

7:                                                ; preds = %0
  %8 = load i64, i64* @wptr, align 8
  %9 = load i64, i64* @Buff, align 8
  %10 = sub nsw i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @newidx_fd, align 4
  %13 = load i64, i64* @Buff, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @write(i32 %12, i64 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @verbosity, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @BUFFSIZE, align 4
  %24 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %7
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %34, %0
  %41 = load i64, i64* @Buff, align 8
  store i64 %41, i64* @wptr, align 8
  ret void
}

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
