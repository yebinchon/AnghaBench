; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32 }
%struct.xz_buf = type { i64, i64, i64 }

@XZ_OK = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_BUF_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xz_dec_run(%struct.xz_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca %struct.xz_dec*, align 8
  %4 = alloca %struct.xz_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %3, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %4, align 8
  %8 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %9 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @DEC_IS_SINGLE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %15 = call i32 @xz_dec_reset(%struct.xz_dec* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %18 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %21 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %24 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %25 = call i32 @dec_main(%struct.xz_dec* %23, %struct.xz_buf* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %27 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @DEC_IS_SINGLE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XZ_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %37 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %40 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @XZ_DATA_ERROR, align 4
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @XZ_BUF_ERROR, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %31
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @XZ_STREAM_END, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %56 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %59 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %49
  br label %91

61:                                               ; preds = %16
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @XZ_OK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %68 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %74 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %79 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @XZ_BUF_ERROR, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %86 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %90

87:                                               ; preds = %71, %65, %61
  %88 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %89 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @DEC_IS_SINGLE(i32) #1

declare dso_local i32 @xz_dec_reset(%struct.xz_dec*) #1

declare dso_local i32 @dec_main(%struct.xz_dec*, %struct.xz_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
