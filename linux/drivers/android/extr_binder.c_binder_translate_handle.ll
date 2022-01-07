; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flat_binder_object = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.binder_transaction = type { %struct.binder_proc* }
%struct.binder_proc = type { i32, i32, i32 }
%struct.binder_thread = type { i32, %struct.binder_proc* }
%struct.binder_node = type { i32, i64, %struct.binder_proc*, i64 }
%struct.binder_ref_data = type { i32, i32 }

@BINDER_TYPE_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%d:%d got transaction with invalid handle, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BINDER_TYPE_BINDER = common dso_local global i64 0, align 8
@BINDER_TYPE_WEAK_BINDER = common dso_local global i64 0, align 8
@BINDER_DEBUG_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"        ref %d desc %d -> node %d u%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"        ref %d desc %d -> ref %d desc %d (node %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flat_binder_object*, %struct.binder_transaction*, %struct.binder_thread*)* @binder_translate_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_translate_handle(%struct.flat_binder_object* %0, %struct.binder_transaction* %1, %struct.binder_thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flat_binder_object*, align 8
  %6 = alloca %struct.binder_transaction*, align 8
  %7 = alloca %struct.binder_thread*, align 8
  %8 = alloca %struct.binder_proc*, align 8
  %9 = alloca %struct.binder_proc*, align 8
  %10 = alloca %struct.binder_node*, align 8
  %11 = alloca %struct.binder_ref_data, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.binder_ref_data, align 4
  store %struct.flat_binder_object* %0, %struct.flat_binder_object** %5, align 8
  store %struct.binder_transaction* %1, %struct.binder_transaction** %6, align 8
  store %struct.binder_thread* %2, %struct.binder_thread** %7, align 8
  %14 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %15 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %14, i32 0, i32 1
  %16 = load %struct.binder_proc*, %struct.binder_proc** %15, align 8
  store %struct.binder_proc* %16, %struct.binder_proc** %8, align 8
  %17 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %18 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %17, i32 0, i32 0
  %19 = load %struct.binder_proc*, %struct.binder_proc** %18, align 8
  store %struct.binder_proc* %19, %struct.binder_proc** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %21 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %22 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %25 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BINDER_TYPE_HANDLE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call %struct.binder_node* @binder_get_node_from_ref(%struct.binder_proc* %20, i32 %23, i32 %30, %struct.binder_ref_data* %11)
  store %struct.binder_node* %31, %struct.binder_node** %10, align 8
  %32 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %33 = icmp ne %struct.binder_node* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %3
  %35 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %36 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %39 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %42 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @binder_user_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %200

47:                                               ; preds = %3
  %48 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %49 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %52 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @security_binder_transfer_binder(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %196

59:                                               ; preds = %47
  %60 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %61 = call i32 @binder_node_lock(%struct.binder_node* %60)
  %62 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %63 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %62, i32 0, i32 2
  %64 = load %struct.binder_proc*, %struct.binder_proc** %63, align 8
  %65 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %66 = icmp eq %struct.binder_proc* %64, %65
  br i1 %66, label %67, label %154

67:                                               ; preds = %59
  %68 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %69 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BINDER_TYPE_HANDLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i64, i64* @BINDER_TYPE_BINDER, align 8
  %76 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %77 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %84

79:                                               ; preds = %67
  %80 = load i64, i64* @BINDER_TYPE_WEAK_BINDER, align 8
  %81 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %82 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %86 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %89 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %91 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %94 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %96 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %95, i32 0, i32 2
  %97 = load %struct.binder_proc*, %struct.binder_proc** %96, align 8
  %98 = icmp ne %struct.binder_proc* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %101 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %100, i32 0, i32 2
  %102 = load %struct.binder_proc*, %struct.binder_proc** %101, align 8
  %103 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %102)
  br label %110

104:                                              ; preds = %84
  %105 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %106 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %105, i32 0, i32 2
  %107 = load %struct.binder_proc*, %struct.binder_proc** %106, align 8
  %108 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %107, i32 0, i32 0
  %109 = call i32 @__acquire(i32* %108)
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %112 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %113 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @BINDER_TYPE_BINDER, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @binder_inc_node_nilocked(%struct.binder_node* %111, i32 %118, i32 0, i32* null)
  %120 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %121 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %120, i32 0, i32 2
  %122 = load %struct.binder_proc*, %struct.binder_proc** %121, align 8
  %123 = icmp ne %struct.binder_proc* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %126 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %125, i32 0, i32 2
  %127 = load %struct.binder_proc*, %struct.binder_proc** %126, align 8
  %128 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %127)
  br label %135

129:                                              ; preds = %110
  %130 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %131 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %130, i32 0, i32 2
  %132 = load %struct.binder_proc*, %struct.binder_proc** %131, align 8
  %133 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %132, i32 0, i32 0
  %134 = call i32 @__release(i32* %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %137 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %138 = call i32 @trace_binder_transaction_ref_to_node(%struct.binder_transaction* %136, %struct.binder_node* %137, %struct.binder_ref_data* %11)
  %139 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %140 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %145 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %148 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @binder_debug(i32 %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %143, i32 %146, i32 %150)
  %152 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %153 = call i32 @binder_node_unlock(%struct.binder_node* %152)
  br label %195

154:                                              ; preds = %59
  %155 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %156 = call i32 @binder_node_unlock(%struct.binder_node* %155)
  %157 = load %struct.binder_proc*, %struct.binder_proc** %9, align 8
  %158 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %159 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %160 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @BINDER_TYPE_HANDLE, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @binder_inc_ref_for_node(%struct.binder_proc* %157, %struct.binder_node* %158, i32 %165, i32* null, %struct.binder_ref_data* %13)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %196

170:                                              ; preds = %154
  %171 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %172 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %13, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %176 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %178 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %180 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %181 = call i32 @trace_binder_transaction_ref_to_ref(%struct.binder_transaction* %179, %struct.binder_node* %180, %struct.binder_ref_data* %11, %struct.binder_ref_data* %13)
  %182 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %183 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %11, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %13, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %13, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %192 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @binder_debug(i32 %182, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %186, i32 %188, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %170, %135
  br label %196

196:                                              ; preds = %195, %169, %56
  %197 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %198 = call i32 @binder_put_node(%struct.binder_node* %197)
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %196, %34
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.binder_node* @binder_get_node_from_ref(%struct.binder_proc*, i32, i32, %struct.binder_ref_data*) #1

declare dso_local i32 @binder_user_error(i8*, i32, i32, i32) #1

declare dso_local i64 @security_binder_transfer_binder(i32, i32) #1

declare dso_local i32 @binder_node_lock(%struct.binder_node*) #1

declare dso_local i32 @binder_inner_proc_lock(%struct.binder_proc*) #1

declare dso_local i32 @__acquire(i32*) #1

declare dso_local i32 @binder_inc_node_nilocked(%struct.binder_node*, i32, i32, i32*) #1

declare dso_local i32 @binder_inner_proc_unlock(%struct.binder_proc*) #1

declare dso_local i32 @__release(i32*) #1

declare dso_local i32 @trace_binder_transaction_ref_to_node(%struct.binder_transaction*, %struct.binder_node*, %struct.binder_ref_data*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @binder_node_unlock(%struct.binder_node*) #1

declare dso_local i32 @binder_inc_ref_for_node(%struct.binder_proc*, %struct.binder_node*, i32, i32*, %struct.binder_ref_data*) #1

declare dso_local i32 @trace_binder_transaction_ref_to_ref(%struct.binder_transaction*, %struct.binder_node*, %struct.binder_ref_data*, %struct.binder_ref_data*) #1

declare dso_local i32 @binder_put_node(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
