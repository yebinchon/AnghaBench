; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_binder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_binder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flat_binder_object = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.binder_transaction = type { %struct.binder_proc* }
%struct.binder_proc = type { i32, i32 }
%struct.binder_thread = type { i32, i32, %struct.binder_proc* }
%struct.binder_node = type { i64, i64, i32 }
%struct.binder_ref_data = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%d:%d sending u%016llx node %d, cookie mismatch %016llx != %016llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BINDER_TYPE_BINDER = common dso_local global i64 0, align 8
@BINDER_TYPE_HANDLE = common dso_local global i64 0, align 8
@BINDER_TYPE_WEAK_HANDLE = common dso_local global i64 0, align 8
@BINDER_DEBUG_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"        node %d u%016llx -> ref %d desc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flat_binder_object*, %struct.binder_transaction*, %struct.binder_thread*)* @binder_translate_binder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_translate_binder(%struct.flat_binder_object* %0, %struct.binder_transaction* %1, %struct.binder_thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flat_binder_object*, align 8
  %6 = alloca %struct.binder_transaction*, align 8
  %7 = alloca %struct.binder_thread*, align 8
  %8 = alloca %struct.binder_node*, align 8
  %9 = alloca %struct.binder_proc*, align 8
  %10 = alloca %struct.binder_proc*, align 8
  %11 = alloca %struct.binder_ref_data, align 4
  %12 = alloca i32, align 4
  store %struct.flat_binder_object* %0, %struct.flat_binder_object** %5, align 8
  store %struct.binder_transaction* %1, %struct.binder_transaction** %6, align 8
  store %struct.binder_thread* %2, %struct.binder_thread** %7, align 8
  %13 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %14 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %13, i32 0, i32 2
  %15 = load %struct.binder_proc*, %struct.binder_proc** %14, align 8
  store %struct.binder_proc* %15, %struct.binder_proc** %9, align 8
  %16 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %17 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %16, i32 0, i32 0
  %18 = load %struct.binder_proc*, %struct.binder_proc** %17, align 8
  store %struct.binder_proc* %18, %struct.binder_proc** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %20 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %21 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.binder_node* @binder_get_node(%struct.binder_proc* %19, i64 %22)
  store %struct.binder_node* %23, %struct.binder_node** %8, align 8
  %24 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %25 = icmp ne %struct.binder_node* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %28 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %29 = call %struct.binder_node* @binder_new_node(%struct.binder_proc* %27, %struct.flat_binder_object* %28)
  store %struct.binder_node* %29, %struct.binder_node** %8, align 8
  %30 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %31 = icmp ne %struct.binder_node* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %143

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %38 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %41 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %36
  %45 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %46 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %49 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %52 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %56 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %59 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %63 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @binder_user_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %54, i32 %57, i32 %61, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %139

69:                                               ; preds = %36
  %70 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %71 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  %74 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @security_binder_transfer_binder(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %139

81:                                               ; preds = %69
  %82 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  %83 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %84 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %85 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BINDER_TYPE_BINDER, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %92 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %91, i32 0, i32 0
  %93 = call i32 @binder_inc_ref_for_node(%struct.binder_proc* %82, %struct.binder_node* %83, i32 %90, i32* %92, %struct.binder_ref_data* %11)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %139

97:                                               ; preds = %81
  %98 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %99 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BINDER_TYPE_BINDER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i64, i64* @BINDER_TYPE_HANDLE, align 8
  %106 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %107 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  br label %114

109:                                              ; preds = %97
  %110 = load i64, i64* @BINDER_TYPE_WEAK_HANDLE, align 8
  %111 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %112 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %116 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %120 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %122 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %124 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %125 = call i32 @trace_binder_transaction_node_to_ref(%struct.binder_transaction* %123, %struct.binder_node* %124, %struct.binder_ref_data* %11)
  %126 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %127 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %128 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %131 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @binder_debug(i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %133, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %114, %96, %78, %44
  %140 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %141 = call i32 @binder_put_node(%struct.binder_node* %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %32
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.binder_node* @binder_get_node(%struct.binder_proc*, i64) #1

declare dso_local %struct.binder_node* @binder_new_node(%struct.binder_proc*, %struct.flat_binder_object*) #1

declare dso_local i32 @binder_user_error(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @security_binder_transfer_binder(i32, i32) #1

declare dso_local i32 @binder_inc_ref_for_node(%struct.binder_proc*, %struct.binder_node*, i32, i32*, %struct.binder_ref_data*) #1

declare dso_local i32 @trace_binder_transaction_node_to_ref(%struct.binder_transaction*, %struct.binder_node*, %struct.binder_ref_data*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @binder_put_node(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
