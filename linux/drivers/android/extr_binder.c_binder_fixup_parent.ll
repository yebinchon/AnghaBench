; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_fixup_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_fixup_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_transaction = type { %struct.binder_proc*, %struct.binder_buffer* }
%struct.binder_proc = type { i32, i32 }
%struct.binder_buffer = type { i64 }
%struct.binder_thread = type { i32, %struct.binder_proc* }
%struct.binder_buffer_object = type { i32, i32, i32, i64, i32 }
%struct.binder_object = type { i32 }

@BINDER_BUFFER_FLAG_HAS_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%d:%d got transaction with invalid parent offset or type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%d:%d got transaction with out-of-order buffer fixup\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%d:%d got transaction with invalid parent offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_transaction*, %struct.binder_thread*, %struct.binder_buffer_object*, i32, i32, i32, i32)* @binder_fixup_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_fixup_parent(%struct.binder_transaction* %0, %struct.binder_thread* %1, %struct.binder_buffer_object* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.binder_transaction*, align 8
  %10 = alloca %struct.binder_thread*, align 8
  %11 = alloca %struct.binder_buffer_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.binder_buffer_object*, align 8
  %17 = alloca %struct.binder_buffer*, align 8
  %18 = alloca %struct.binder_proc*, align 8
  %19 = alloca %struct.binder_proc*, align 8
  %20 = alloca %struct.binder_object, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.binder_transaction* %0, %struct.binder_transaction** %9, align 8
  store %struct.binder_thread* %1, %struct.binder_thread** %10, align 8
  store %struct.binder_buffer_object* %2, %struct.binder_buffer_object** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %24 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %23, i32 0, i32 1
  %25 = load %struct.binder_buffer*, %struct.binder_buffer** %24, align 8
  store %struct.binder_buffer* %25, %struct.binder_buffer** %17, align 8
  %26 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %27 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %26, i32 0, i32 1
  %28 = load %struct.binder_proc*, %struct.binder_proc** %27, align 8
  store %struct.binder_proc* %28, %struct.binder_proc** %18, align 8
  %29 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %30 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %29, i32 0, i32 0
  %31 = load %struct.binder_proc*, %struct.binder_proc** %30, align 8
  store %struct.binder_proc* %31, %struct.binder_proc** %19, align 8
  %32 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %33 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BINDER_BUFFER_FLAG_HAS_PARENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %142

39:                                               ; preds = %7
  %40 = load %struct.binder_proc*, %struct.binder_proc** %19, align 8
  %41 = load %struct.binder_buffer*, %struct.binder_buffer** %17, align 8
  %42 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %43 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call %struct.binder_buffer_object* @binder_validate_ptr(%struct.binder_proc* %40, %struct.binder_buffer* %41, %struct.binder_object* %20, i32 %44, i32 %45, i32* %22, i32 %46)
  store %struct.binder_buffer_object* %47, %struct.binder_buffer_object** %16, align 8
  %48 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %16, align 8
  %49 = icmp ne %struct.binder_buffer_object* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %39
  %51 = load %struct.binder_proc*, %struct.binder_proc** %18, align 8
  %52 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %55 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @binder_user_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %142

60:                                               ; preds = %39
  %61 = load %struct.binder_proc*, %struct.binder_proc** %19, align 8
  %62 = load %struct.binder_buffer*, %struct.binder_buffer** %17, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %22, align 4
  %65 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %66 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @binder_validate_fixup(%struct.binder_proc* %61, %struct.binder_buffer* %62, i32 %63, i32 %64, i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %60
  %73 = load %struct.binder_proc*, %struct.binder_proc** %18, align 8
  %74 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %77 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @binder_user_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %142

82:                                               ; preds = %60
  %83 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %16, align 8
  %84 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %86, 4
  br i1 %87, label %99, label %88

88:                                               ; preds = %82
  %89 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %90 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %16, align 8
  %94 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 4
  %98 = icmp ugt i64 %92, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %88, %82
  %100 = load %struct.binder_proc*, %struct.binder_proc** %18, align 8
  %101 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %104 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @binder_user_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %142

109:                                              ; preds = %88
  %110 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %111 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %16, align 8
  %115 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %113, %116
  %118 = load %struct.binder_buffer*, %struct.binder_buffer** %17, align 8
  %119 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %21, align 4
  %123 = load %struct.binder_proc*, %struct.binder_proc** %19, align 8
  %124 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %123, i32 0, i32 1
  %125 = load %struct.binder_buffer*, %struct.binder_buffer** %17, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %11, align 8
  %128 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %127, i32 0, i32 3
  %129 = call i64 @binder_alloc_copy_to_buffer(i32* %124, %struct.binder_buffer* %125, i32 %126, i64* %128, i32 8)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %109
  %132 = load %struct.binder_proc*, %struct.binder_proc** %18, align 8
  %133 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %136 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @binder_user_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %142

141:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %131, %99, %72, %50, %38
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local %struct.binder_buffer_object* @binder_validate_ptr(%struct.binder_proc*, %struct.binder_buffer*, %struct.binder_object*, i32, i32, i32*, i32) #1

declare dso_local i32 @binder_user_error(i8*, i32, i32) #1

declare dso_local i32 @binder_validate_fixup(%struct.binder_proc*, %struct.binder_buffer*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @binder_alloc_copy_to_buffer(i32*, %struct.binder_buffer*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
