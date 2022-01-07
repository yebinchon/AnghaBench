; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_ref_olocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_ref_olocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_ref = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"%d invalid dec strong, ref %d desc %d s %d w %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%d invalid dec weak, ref %d desc %d s %d w %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_ref*, i32)* @binder_dec_ref_olocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_dec_ref_olocked(%struct.binder_ref* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binder_ref*, align 8
  %5 = alloca i32, align 4
  store %struct.binder_ref* %0, %struct.binder_ref** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %10 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %16 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %21 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %25 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %29 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %33 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @binder_user_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27, i64 %31, i64 %35)
  store i32 0, i32* %3, align 4
  br label %106

37:                                               ; preds = %8
  %38 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %39 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %44 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %50 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @binder_dec_node(i32 %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %48, %37
  br label %90

55:                                               ; preds = %2
  %56 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %57 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %63 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %68 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %72 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %76 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %80 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @binder_user_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %74, i64 %78, i64 %82)
  store i32 0, i32* %3, align 4
  br label %106

84:                                               ; preds = %55
  %85 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %86 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %84, %54
  %91 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %92 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %98 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %104 = call i32 @binder_cleanup_ref_olocked(%struct.binder_ref* %103)
  store i32 1, i32* %3, align 4
  br label %106

105:                                              ; preds = %96, %90
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102, %61, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @binder_user_error(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @binder_dec_node(i32, i32, i32) #1

declare dso_local i32 @binder_cleanup_ref_olocked(%struct.binder_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
