; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_relax_log_crc32.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_relax_log_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@disable_crc32 = common dso_local global i32 0, align 4
@log_crc32_pos = common dso_local global i64 0, align 8
@log_pos = common dso_local global i64 0, align 8
@R = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tot_crc32_pos = common dso_local global i64 0, align 8
@log_crc32_complement = common dso_local global i32 0, align 4
@tot_crc32 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"fatal: crc32 mismatch in binlog at position %lld: header expects %08x, actual %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relax_log_crc32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 3
  %10 = and i32 %9, -4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @disable_crc32, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %87

15:                                               ; preds = %1
  %16 = load i64, i64* @log_crc32_pos, align 8
  %17 = load i64, i64* @log_pos, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 1), align 8
  %20 = sub nsw i64 %18, %19
  %21 = sub nsw i64 %17, %20
  %22 = icmp sge i64 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 2), align 8
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = icmp sle i64 %26, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 (...) @log_cur_pos()
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* @log_crc32_pos, align 8
  %39 = load i64, i64* @tot_crc32_pos, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %15
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @tot_crc32_pos, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 0), align 8
  %47 = load i64, i64* @log_pos, align 8
  %48 = load i64, i64* @log_crc32_pos, align 8
  %49 = sub nsw i64 %47, %48
  %50 = sub nsw i64 %46, %49
  %51 = load i64, i64* @tot_crc32_pos, align 8
  %52 = load i64, i64* @log_crc32_pos, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* @log_crc32_complement, align 4
  %55 = call i32 @crc32_partial(i64 %50, i64 %53, i32 %54)
  store i32 %55, i32* @log_crc32_complement, align 4
  %56 = load i64, i64* @tot_crc32_pos, align 8
  store i64 %56, i64* @log_crc32_pos, align 8
  %57 = load i32, i32* @tot_crc32, align 4
  %58 = load i32, i32* @log_crc32_complement, align 4
  %59 = xor i32 %58, -1
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* @tot_crc32_pos, align 8
  %64 = load i32, i32* @tot_crc32, align 4
  %65 = load i32, i32* @log_crc32_complement, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %61, %45
  %69 = load i32, i32* @tot_crc32, align 4
  %70 = load i32, i32* @log_crc32_complement, align 4
  %71 = xor i32 %70, -1
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  br label %75

75:                                               ; preds = %68, %41, %15
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 0), align 8
  %77 = load i64, i64* @log_pos, align 8
  %78 = load i64, i64* @log_crc32_pos, align 8
  %79 = sub nsw i64 %77, %78
  %80 = sub nsw i64 %76, %79
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @log_crc32_pos, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i32, i32* @log_crc32_complement, align 4
  %85 = call i32 @crc32_partial(i64 %80, i64 %83, i32 %84)
  store i32 %85, i32* @log_crc32_complement, align 4
  %86 = load i64, i64* %3, align 8
  store i64 %86, i64* @log_crc32_pos, align 8
  br label %87

87:                                               ; preds = %75, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @crc32_partial(i64, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
