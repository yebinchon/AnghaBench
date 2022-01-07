; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_buffer_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_buffer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.binder_proc = type { i32, i32, i32 }
%struct.binder_buffer = type { i32, i64, i32, i32, %struct.binder_node* }
%struct.binder_node = type { i64, i32 }
%struct.binder_object_header = type { i32 }
%struct.binder_object = type { %struct.binder_object_header }
%struct.flat_binder_object = type { i32, i64 }
%struct.binder_ref_data = type { i32, i32 }
%struct.binder_fd_array_object = type { i32, i64, i32 }
%struct.binder_buffer_object = type { i64, i32 }

@BINDER_DEBUG_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%d buffer release %d, size %zd-%zd, failed at %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"transaction release %d bad object at offset %lld, size %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"transaction release %d bad node %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"        node %d u%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"transaction release %d bad handle %d, ret = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"        ref %d desc %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"transaction release %d bad parent offset\0A\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"transaction release %d invalid number of fds (%lld)\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"transaction release %d not enough space for %lld fds in buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"transaction release %d bad object type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_proc*, %struct.binder_buffer*, i64, i32)* @binder_transaction_buffer_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_transaction_buffer_release(%struct.binder_proc* %0, %struct.binder_buffer* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.binder_proc*, align 8
  %6 = alloca %struct.binder_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.binder_object_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.binder_object, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.flat_binder_object*, align 8
  %18 = alloca %struct.binder_node*, align 8
  %19 = alloca %struct.flat_binder_object*, align 8
  %20 = alloca %struct.binder_ref_data, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.binder_fd_array_object*, align 8
  %23 = alloca %struct.binder_buffer_object*, align 8
  %24 = alloca %struct.binder_object, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %5, align 8
  store %struct.binder_buffer* %1, %struct.binder_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %32 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %36 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %37 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i32, i8*, i32, i32, ...) @binder_debug(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i64 %47, i64 %48)
  %50 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %50, i32 0, i32 4
  %52 = load %struct.binder_node*, %struct.binder_node** %51, align 8
  %53 = icmp ne %struct.binder_node* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %4
  %55 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %55, i32 0, i32 4
  %57 = load %struct.binder_node*, %struct.binder_node** %56, align 8
  %58 = call i32 @binder_dec_node(%struct.binder_node* %57, i32 1, i32 0)
  br label %59

59:                                               ; preds = %54, %4
  %60 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ALIGN(i32 %62, i32 8)
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  br label %74

68:                                               ; preds = %59
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  br label %74

74:                                               ; preds = %68, %66
  %75 = phi i64 [ %67, %66 ], [ %73, %68 ]
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %311, %74
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %314

81:                                               ; preds = %77
  store i64 0, i64* %14, align 8
  %82 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %83 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %82, i32 0, i32 0
  %84 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @binder_alloc_copy_from_buffer(i32* %83, i64* %16, %struct.binder_buffer* %84, i64 %85, i32 8)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %90 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %91 = load i64, i64* %16, align 8
  %92 = call i64 @binder_get_object(%struct.binder_proc* %89, %struct.binder_buffer* %90, i64 %91, %struct.binder_object* %15)
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i64, i64* %14, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load i64, i64* %16, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %101 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %99, i32 %102)
  br label %311

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.binder_object, %struct.binder_object* %15, i32 0, i32 0
  store %struct.binder_object_header* %105, %struct.binder_object_header** %13, align 8
  %106 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %107 = getelementptr inbounds %struct.binder_object_header, %struct.binder_object_header* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %304 [
    i32 134, label %109
    i32 129, label %109
    i32 131, label %145
    i32 128, label %145
    i32 133, label %174
    i32 130, label %189
    i32 132, label %190
  ]

109:                                              ; preds = %104, %104
  %110 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %111 = call %struct.flat_binder_object* @to_flat_binder_object(%struct.binder_object_header* %110)
  store %struct.flat_binder_object* %111, %struct.flat_binder_object** %17, align 8
  %112 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %113 = load %struct.flat_binder_object*, %struct.flat_binder_object** %17, align 8
  %114 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call %struct.binder_node* @binder_get_node(%struct.binder_proc* %112, i64 %115)
  store %struct.binder_node* %116, %struct.binder_node** %18, align 8
  %117 = load %struct.binder_node*, %struct.binder_node** %18, align 8
  %118 = icmp eq %struct.binder_node* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.flat_binder_object*, %struct.flat_binder_object** %17, align 8
  %122 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %124)
  br label %310

126:                                              ; preds = %109
  %127 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %128 = load %struct.binder_node*, %struct.binder_node** %18, align 8
  %129 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.binder_node*, %struct.binder_node** %18, align 8
  %132 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 (i32, i8*, i32, i32, ...) @binder_debug(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %134)
  %136 = load %struct.binder_node*, %struct.binder_node** %18, align 8
  %137 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %138 = getelementptr inbounds %struct.binder_object_header, %struct.binder_object_header* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 134
  %141 = zext i1 %140 to i32
  %142 = call i32 @binder_dec_node(%struct.binder_node* %136, i32 %141, i32 0)
  %143 = load %struct.binder_node*, %struct.binder_node** %18, align 8
  %144 = call i32 @binder_put_node(%struct.binder_node* %143)
  br label %310

145:                                              ; preds = %104, %104
  %146 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %147 = call %struct.flat_binder_object* @to_flat_binder_object(%struct.binder_object_header* %146)
  store %struct.flat_binder_object* %147, %struct.flat_binder_object** %19, align 8
  %148 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %149 = load %struct.flat_binder_object*, %struct.flat_binder_object** %19, align 8
  %150 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %153 = getelementptr inbounds %struct.binder_object_header, %struct.binder_object_header* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 131
  %156 = zext i1 %155 to i32
  %157 = call i32 @binder_dec_ref_for_handle(%struct.binder_proc* %148, i32 %151, i32 %156, %struct.binder_ref_data* %20)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %145
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.flat_binder_object*, %struct.flat_binder_object** %19, align 8
  %163 = getelementptr inbounds %struct.flat_binder_object, %struct.flat_binder_object* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %21, align 4
  %166 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %164, i32 %165)
  br label %310

167:                                              ; preds = %145
  %168 = load i32, i32* @BINDER_DEBUG_TRANSACTION, align 4
  %169 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %20, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.binder_ref_data, %struct.binder_ref_data* %20, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, i32, i32, ...) @binder_debug(i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %172)
  br label %310

174:                                              ; preds = %104
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %179 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br label %185

185:                                              ; preds = %177, %174
  %186 = phi i1 [ false, %174 ], [ %184, %177 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @WARN_ON(i32 %187)
  br label %310

189:                                              ; preds = %104
  br label %310

190:                                              ; preds = %104
  %191 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %192 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %311

199:                                              ; preds = %190
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* %10, align 8
  %202 = sub nsw i64 %200, %201
  %203 = udiv i64 %202, 8
  store i64 %203, i64* %28, align 8
  %204 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %205 = call %struct.binder_fd_array_object* @to_binder_fd_array_object(%struct.binder_object_header* %204)
  store %struct.binder_fd_array_object* %205, %struct.binder_fd_array_object** %22, align 8
  %206 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %207 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %208 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %209 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* %28, align 8
  %213 = call %struct.binder_buffer_object* @binder_validate_ptr(%struct.binder_proc* %206, %struct.binder_buffer* %207, %struct.binder_object* %24, i32 %210, i64 %211, i32* null, i64 %212)
  store %struct.binder_buffer_object* %213, %struct.binder_buffer_object** %23, align 8
  %214 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %23, align 8
  %215 = icmp ne %struct.binder_buffer_object* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %199
  %217 = load i32, i32* %9, align 4
  %218 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  br label %311

219:                                              ; preds = %199
  %220 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %221 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = mul i64 8, %223
  store i64 %224, i64* %27, align 8
  %225 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %226 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* @SIZE_MAX, align 4
  %230 = sext i32 %229 to i64
  %231 = udiv i64 %230, 8
  %232 = icmp uge i64 %228, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %219
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %236 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %234, i32 %237)
  br label %311

239:                                              ; preds = %219
  %240 = load i64, i64* %27, align 8
  %241 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %23, align 8
  %242 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %240, %243
  br i1 %244, label %255, label %245

245:                                              ; preds = %239
  %246 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %247 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %23, align 8
  %250 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %27, align 8
  %253 = sub nsw i64 %251, %252
  %254 = icmp sgt i64 %248, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %245, %239
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %258 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %256, i32 %259)
  br label %311

261:                                              ; preds = %245
  %262 = load %struct.binder_buffer_object*, %struct.binder_buffer_object** %23, align 8
  %263 = getelementptr inbounds %struct.binder_buffer_object, %struct.binder_buffer_object* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %267 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = sub i64 %265, %269
  %271 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %272 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %270, %273
  store i64 %274, i64* %25, align 8
  store i64 0, i64* %26, align 8
  br label %275

275:                                              ; preds = %300, %261
  %276 = load i64, i64* %26, align 8
  %277 = load %struct.binder_fd_array_object*, %struct.binder_fd_array_object** %22, align 8
  %278 = getelementptr inbounds %struct.binder_fd_array_object, %struct.binder_fd_array_object* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = icmp ult i64 %276, %280
  br i1 %281, label %282, label %303

282:                                              ; preds = %275
  %283 = load i64, i64* %25, align 8
  %284 = load i64, i64* %26, align 8
  %285 = mul i64 %284, 8
  %286 = add i64 %283, %285
  store i64 %286, i64* %31, align 8
  %287 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %288 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %287, i32 0, i32 0
  %289 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %290 = load i64, i64* %31, align 8
  %291 = call i32 @binder_alloc_copy_from_buffer(i32* %288, i64* %29, %struct.binder_buffer* %289, i64 %290, i32 8)
  store i32 %291, i32* %30, align 4
  %292 = load i32, i32* %30, align 4
  %293 = call i32 @WARN_ON(i32 %292)
  %294 = load i32, i32* %30, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %282
  %297 = load i64, i64* %29, align 8
  %298 = call i32 @binder_deferred_fd_close(i64 %297)
  br label %299

299:                                              ; preds = %296, %282
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %26, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %26, align 8
  br label %275

303:                                              ; preds = %275
  br label %310

304:                                              ; preds = %104
  %305 = load i32, i32* %9, align 4
  %306 = load %struct.binder_object_header*, %struct.binder_object_header** %13, align 8
  %307 = getelementptr inbounds %struct.binder_object_header, %struct.binder_object_header* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %305, i32 %308)
  br label %310

310:                                              ; preds = %304, %303, %189, %185, %167, %160, %126, %119
  br label %311

311:                                              ; preds = %310, %255, %233, %216, %198, %96
  %312 = load i64, i64* %11, align 8
  %313 = add i64 %312, 8
  store i64 %313, i64* %11, align 8
  br label %77

314:                                              ; preds = %77
  ret void
}

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @binder_dec_node(%struct.binder_node*, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @binder_alloc_copy_from_buffer(i32*, i64*, %struct.binder_buffer*, i64, i32) #1

declare dso_local i64 @binder_get_object(%struct.binder_proc*, %struct.binder_buffer*, i64, %struct.binder_object*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local %struct.flat_binder_object* @to_flat_binder_object(%struct.binder_object_header*) #1

declare dso_local %struct.binder_node* @binder_get_node(%struct.binder_proc*, i64) #1

declare dso_local i32 @binder_put_node(%struct.binder_node*) #1

declare dso_local i32 @binder_dec_ref_for_handle(%struct.binder_proc*, i32, i32, %struct.binder_ref_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.binder_fd_array_object* @to_binder_fd_array_object(%struct.binder_object_header*) #1

declare dso_local %struct.binder_buffer_object* @binder_validate_ptr(%struct.binder_proc*, %struct.binder_buffer*, %struct.binder_object*, i32, i64, i32*, i64) #1

declare dso_local i32 @binder_deferred_fd_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
