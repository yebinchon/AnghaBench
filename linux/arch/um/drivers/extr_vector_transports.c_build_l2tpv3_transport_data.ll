; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_l2tpv3_transport_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_l2tpv3_transport_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i32, i32, i32*, i32*, %struct.uml_l2tpv3_data* }
%struct.uml_l2tpv3_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@l2tpv3_form_header = common dso_local global i32 0, align 4
@l2tpv3_verify_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rx_session\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tx_session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"cookie64\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rx_cookie\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tx_cookie\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pin_counter\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @build_l2tpv3_transport_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_l2tpv3_transport_data(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca %struct.uml_l2tpv3_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.uml_l2tpv3_data* @kmalloc(i32 80, i32 %10)
  %12 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 5
  store %struct.uml_l2tpv3_data* %11, %struct.uml_l2tpv3_data** %13, align 8
  %14 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %15 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %14, i32 0, i32 5
  %16 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %15, align 8
  %17 = icmp eq %struct.uml_l2tpv3_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %242

21:                                               ; preds = %1
  %22 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %23 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %22, i32 0, i32 5
  %24 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %23, align 8
  store %struct.uml_l2tpv3_data* %24, %struct.uml_l2tpv3_data** %4, align 8
  %25 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %26 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %25, i32 0, i32 4
  store i32* @l2tpv3_form_header, i32** %26, align 8
  %27 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %28 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %27, i32 0, i32 3
  store i32* @l2tpv3_verify_header, i32** %28, align 8
  %29 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %30 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %29, i32 0, i32 13
  store i64 0, i64* %30, align 8
  %31 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %32 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %34 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %36 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %38 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %40 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %42 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @get_uint_param(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %21
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %51 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %55 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @get_uint_param(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %61 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @get_uint_param(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = call i8* @cpu_to_be32(i64 %67)
  %69 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %70 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %69, i32 0, i32 12
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = call i8* @cpu_to_be32(i64 %72)
  %74 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %75 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  br label %79

76:                                               ; preds = %59
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %242

79:                                               ; preds = %65
  br label %83

80:                                               ; preds = %53
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %242

83:                                               ; preds = %79
  %84 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %85 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %87 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @get_uint_param(i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %96 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %83
  %99 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %100 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %102 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @get_ulong_param(i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64* %8)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %158

106:                                              ; preds = %98
  %107 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %108 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @get_ulong_param(i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64* %9)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %106
  %113 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %114 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %113, i32 0, i32 4
  store i32 1, i32* %114, align 8
  %115 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %116 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %112
  %120 = load i64, i64* %8, align 8
  %121 = call i8* @cpu_to_be64(i64 %120)
  %122 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %123 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %122, i32 0, i32 10
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i8* @cpu_to_be64(i64 %124)
  %126 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %127 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %126, i32 0, i32 9
  store i8* %125, i8** %127, align 8
  %128 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %129 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 8
  store i32 %131, i32* %129, align 8
  %132 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %133 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 8
  store i32 %135, i32* %133, align 4
  br label %153

136:                                              ; preds = %112
  %137 = load i64, i64* %8, align 8
  %138 = call i8* @cpu_to_be32(i64 %137)
  %139 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %140 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i8* @cpu_to_be32(i64 %141)
  %143 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %144 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %143, i32 0, i32 9
  store i8* %142, i8** %144, align 8
  %145 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %146 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 4
  store i32 %148, i32* %146, align 8
  %149 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %150 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %136, %119
  br label %157

154:                                              ; preds = %106
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %242

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157, %98
  %159 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %160 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %159, i32 0, i32 5
  store i32 0, i32* %160, align 4
  %161 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %162 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @get_uint_param(i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %158
  %167 = load i32, i32* %5, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %171 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %170, i32 0, i32 5
  store i32 1, i32* %171, align 4
  %172 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %173 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 4
  store i32 %175, i32* %173, align 8
  %176 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %177 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @get_uint_param(i32 %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %5)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %169
  %182 = load i32, i32* %5, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %186 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %185, i32 0, i32 6
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187, %169
  br label %189

189:                                              ; preds = %188, %166
  br label %190

190:                                              ; preds = %189, %158
  %191 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %192 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @get_uint_param(i32 %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %5)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %190
  %197 = load i32, i32* %5, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %196
  %200 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %201 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %200, i32 0, i32 7
  store i32 1, i32* %201, align 4
  %202 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %203 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 4
  store i32 %205, i32* %203, align 8
  %206 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %207 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* %207, align 4
  %210 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %211 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 4
  store i64 %213, i64* %211, align 8
  %214 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %215 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 4
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %199, %196
  br label %219

219:                                              ; preds = %218, %190
  %220 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %221 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %224 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %226 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %219
  %230 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %4, align 8
  %231 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %229
  %235 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %236 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add i64 %238, 4
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  br label %241

241:                                              ; preds = %234, %229, %219
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %154, %80, %76, %18
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.uml_l2tpv3_data* @kmalloc(i32, i32) #1

declare dso_local i64 @get_uint_param(i32, i8*, i32*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @get_ulong_param(i32, i8*, i64*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
