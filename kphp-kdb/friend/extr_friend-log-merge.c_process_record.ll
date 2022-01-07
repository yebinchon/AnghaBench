; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-log-merge.c_process_record.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-log-merge.c_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_record.type_ok = internal global i32 -1, align 4
@rptr = common dso_local global i64 0, align 8
@rend = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"error %d reading binlog at position %lld, write position %lld, type %08x (prev type %08x)\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i64 0, align 8
@targ_orig_size = common dso_local global i64 0, align 8
@wr_rec = common dso_local global i32 0, align 4
@rd_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @prepare_read()
  %6 = load i64, i64* @rptr, align 8
  %7 = load i64, i64* @rend, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %75

10:                                               ; preds = %0
  %11 = load i64, i64* @rend, align 8
  %12 = load i64, i64* @rptr, align 8
  %13 = sub nsw i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -2, i32* %1, align 4
  br label %75

18:                                               ; preds = %10
  %19 = load i64, i64* @rptr, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* @rptr, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @get_logrec_size(i32 %22, i64 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -2, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @rd_bytes, align 4
  %37 = load i64, i64* @wr_bytes, align 8
  %38 = load i64, i64* @targ_orig_size, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @process_record.type_ok, align 4
  %42 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i64 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %1, align 4
  br label %75

44:                                               ; preds = %30
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* @process_record.type_ok, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 3
  %48 = and i32 %47, -4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i64, i64* @rptr, align 8
  %51 = call i64 @want_write(i32 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @write_alloc(i32 %54)
  %56 = load i64, i64* @rptr, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @memcpy(i32 %55, i64 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @wr_bytes, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* @wr_bytes, align 8
  %63 = load i32, i32* @wr_rec, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @wr_rec, align 4
  br label %65

65:                                               ; preds = %53, %44
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @rd_bytes, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* @rd_bytes, align 4
  %69 = load i32, i32* @rd_rec, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @rd_rec, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @rptr, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* @rptr, align 8
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %65, %33, %17, %9
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @prepare_read(...) #1

declare dso_local i32 @get_logrec_size(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i64 @want_write(i32, i64) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
