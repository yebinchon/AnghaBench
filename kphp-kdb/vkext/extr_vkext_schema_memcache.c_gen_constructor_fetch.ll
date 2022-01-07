; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_constructor_fetch.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_constructor_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator = type { i32, i32, i64, i32, i8*, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tl_type = type { i32 }
%struct.tl_tree_type = type { %struct.tl_type* }

@NAME_INT = common dso_local global i64 0, align 8
@tlcomb_fetch_int = common dso_local global i8* null, align 8
@tlsub_ret_ok = common dso_local global i8* null, align 8
@NAME_LONG = common dso_local global i64 0, align 8
@tlcomb_fetch_long = common dso_local global i8* null, align 8
@NAME_STRING = common dso_local global i64 0, align 8
@tlcomb_fetch_string = common dso_local global i8* null, align 8
@NAME_DOUBLE = common dso_local global i64 0, align 8
@tlcomb_fetch_double = common dso_local global i8* null, align 8
@NAME_VECTOR = common dso_local global i64 0, align 8
@tlcomb_fetch_vector = common dso_local global i8* null, align 8
@gen_constructor_fetch.tIP = internal global [4 x i8*] zeroinitializer, align 16
@tlsub_push_type_var = common dso_local global i8* null, align 8
@tlcomb_fetch_type = common dso_local global i8* null, align 8
@NAME_MAYBE_TRUE = common dso_local global i64 0, align 8
@tlcomb_fetch_maybe = common dso_local global i8* null, align 8
@gen_constructor_fetch.tIP.1 = internal global [4 x i8*] zeroinitializer, align 16
@NAME_MAYBE_FALSE = common dso_local global i64 0, align 8
@NAME_BOOL_FALSE = common dso_local global i64 0, align 8
@tlcomb_fetch_false = common dso_local global i8* null, align 8
@NAME_BOOL_TRUE = common dso_local global i64 0, align 8
@tlcomb_fetch_true = common dso_local global i8* null, align 8
@NODE_TYPE_TYPE = common dso_local global i64 0, align 8
@FLAG_OPT_VAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_constructor_fetch(%struct.tl_combinator* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tl_type*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tl_combinator* %0, %struct.tl_combinator** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %18 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %23 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  br label %492

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %492

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %30 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %31 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %38 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %10, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  %43 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %44 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %42, i32 0, i32 %48)
  %50 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %51 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @gen_uni(i64 %52, i8** %56, i32 %59, i32* %42)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

64:                                               ; preds = %29
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %69 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NAME_INT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %64
  %74 = load i8*, i8** @tlcomb_fetch_int, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %74, i8** %79, align 8
  %80 = load i8*, i8** @tlsub_ret_ok, align 8
  %81 = load i8**, i8*** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* %80, i8** %85, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i8* @IP_dup(i8** %86, i32 %87)
  %89 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %90 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %93 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

95:                                               ; preds = %64
  %96 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %97 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NAME_LONG, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load i8*, i8** @tlcomb_fetch_long, align 8
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  store i8* %102, i8** %107, align 8
  %108 = load i8*, i8** @tlsub_ret_ok, align 8
  %109 = load i8**, i8*** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  store i8* %108, i8** %113, align 8
  %114 = load i8**, i8*** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @IP_dup(i8** %114, i32 %115)
  %117 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %118 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %121 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

123:                                              ; preds = %95
  %124 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %125 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NAME_STRING, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %123
  %130 = load i8*, i8** @tlcomb_fetch_string, align 8
  %131 = load i8**, i8*** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  store i8* %130, i8** %135, align 8
  %136 = load i8*, i8** @tlsub_ret_ok, align 8
  %137 = load i8**, i8*** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8*, i8** %137, i64 %140
  store i8* %136, i8** %141, align 8
  %142 = load i8**, i8*** %6, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i8* @IP_dup(i8** %142, i32 %143)
  %145 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %146 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %149 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

151:                                              ; preds = %123
  %152 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %153 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NAME_DOUBLE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %151
  %158 = load i8*, i8** @tlcomb_fetch_double, align 8
  %159 = load i8**, i8*** %6, align 8
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8*, i8** %159, i64 %162
  store i8* %158, i8** %163, align 8
  %164 = load i8*, i8** @tlsub_ret_ok, align 8
  %165 = load i8**, i8*** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* %164, i8** %169, align 8
  %170 = load i8**, i8*** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i8* @IP_dup(i8** %170, i32 %171)
  %173 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %174 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %173, i32 0, i32 4
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %177 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

179:                                              ; preds = %151
  %180 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %181 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @NAME_VECTOR, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %179
  %186 = load i8*, i8** @tlcomb_fetch_vector, align 8
  %187 = load i8**, i8*** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8*, i8** %187, i64 %190
  store i8* %186, i8** %191, align 8
  %192 = load i8*, i8** @tlsub_push_type_var, align 8
  store i8* %192, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP, i64 0, i64 0), align 16
  store i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP, i64 0, i64 1), align 8
  %193 = load i8*, i8** @tlcomb_fetch_type, align 8
  store i8* %193, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP, i64 0, i64 2), align 16
  %194 = load i8*, i8** @tlsub_ret_ok, align 8
  store i8* %194, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP, i64 0, i64 3), align 8
  %195 = call i8* @IP_dup(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP, i64 0, i64 0), i32 4)
  %196 = load i8**, i8*** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8*, i8** %196, i64 %199
  store i8* %195, i8** %200, align 8
  %201 = load i8*, i8** @tlsub_ret_ok, align 8
  %202 = load i8**, i8*** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8*, i8** %202, i64 %205
  store i8* %201, i8** %206, align 8
  %207 = load i8**, i8*** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i8* @IP_dup(i8** %207, i32 %208)
  %210 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %211 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %214 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %8, align 4
  store i32 %215, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

216:                                              ; preds = %179
  %217 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %218 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @NAME_MAYBE_TRUE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %253

222:                                              ; preds = %216
  %223 = load i8*, i8** @tlcomb_fetch_maybe, align 8
  %224 = load i8**, i8*** %6, align 8
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  store i8* %223, i8** %228, align 8
  %229 = load i8*, i8** @tlsub_push_type_var, align 8
  store i8* %229, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP.1, i64 0, i64 0), align 16
  store i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP.1, i64 0, i64 1), align 8
  %230 = load i8*, i8** @tlcomb_fetch_type, align 8
  store i8* %230, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP.1, i64 0, i64 2), align 16
  %231 = load i8*, i8** @tlsub_ret_ok, align 8
  store i8* %231, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP.1, i64 0, i64 3), align 8
  %232 = call i8* @IP_dup(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gen_constructor_fetch.tIP.1, i64 0, i64 0), i32 4)
  %233 = load i8**, i8*** %6, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8*, i8** %233, i64 %236
  store i8* %232, i8** %237, align 8
  %238 = load i8*, i8** @tlsub_ret_ok, align 8
  %239 = load i8**, i8*** %6, align 8
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8*, i8** %239, i64 %242
  store i8* %238, i8** %243, align 8
  %244 = load i8**, i8*** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = call i8* @IP_dup(i8** %244, i32 %245)
  %247 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %248 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %247, i32 0, i32 4
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %251 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

253:                                              ; preds = %216
  %254 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %255 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @NAME_MAYBE_FALSE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %265, label %259

259:                                              ; preds = %253
  %260 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %261 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @NAME_BOOL_FALSE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %287

265:                                              ; preds = %259, %253
  %266 = load i8*, i8** @tlcomb_fetch_false, align 8
  %267 = load i8**, i8*** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8*, i8** %267, i64 %270
  store i8* %266, i8** %271, align 8
  %272 = load i8*, i8** @tlsub_ret_ok, align 8
  %273 = load i8**, i8*** %6, align 8
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8*, i8** %273, i64 %276
  store i8* %272, i8** %277, align 8
  %278 = load i8**, i8*** %6, align 8
  %279 = load i32, i32* %8, align 4
  %280 = call i8* @IP_dup(i8** %278, i32 %279)
  %281 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %282 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %281, i32 0, i32 4
  store i8* %280, i8** %282, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %285 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %8, align 4
  store i32 %286, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

287:                                              ; preds = %259
  %288 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %289 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @NAME_BOOL_TRUE, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %315

293:                                              ; preds = %287
  %294 = load i8*, i8** @tlcomb_fetch_true, align 8
  %295 = load i8**, i8*** %6, align 8
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8*, i8** %295, i64 %298
  store i8* %294, i8** %299, align 8
  %300 = load i8*, i8** @tlsub_ret_ok, align 8
  %301 = load i8**, i8*** %6, align 8
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8*, i8** %301, i64 %304
  store i8* %300, i8** %305, align 8
  %306 = load i8**, i8*** %6, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i8* @IP_dup(i8** %306, i32 %307)
  %309 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %310 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %309, i32 0, i32 4
  store i8* %308, i8** %310, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %313 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

315:                                              ; preds = %287
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  %323 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %324 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %323, i32 0, i32 6
  %325 = load i64, i64* %324, align 8
  %326 = call i64 @TYPE(i64 %325)
  %327 = load i64, i64* @NODE_TYPE_TYPE, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %419

329:                                              ; preds = %322
  %330 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %331 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %330, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = inttoptr i64 %332 to %struct.tl_tree_type*
  %334 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %333, i32 0, i32 0
  %335 = load %struct.tl_type*, %struct.tl_type** %334, align 8
  store %struct.tl_type* %335, %struct.tl_type** %14, align 8
  %336 = load %struct.tl_type*, %struct.tl_type** %14, align 8
  %337 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %418

340:                                              ; preds = %329
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %341

341:                                              ; preds = %365, %340
  %342 = load i32, i32* %9, align 4
  %343 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %344 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %368

347:                                              ; preds = %341
  %348 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %349 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %348, i32 0, i32 5
  %350 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %350, i64 %352
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @FLAG_OPT_VAR, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %347
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %16, align 4
  %363 = load i32, i32* %9, align 4
  store i32 %363, i32* %15, align 4
  br label %364

364:                                              ; preds = %360, %347
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %9, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %9, align 4
  br label %341

368:                                              ; preds = %341
  %369 = load i32, i32* %16, align 4
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %417

371:                                              ; preds = %368
  %372 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %373 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %372, i32 0, i32 5
  %374 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %373, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %374, i64 %376
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = load i8**, i8*** %6, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8*, i8** %379, i64 %381
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* %8, align 4
  %385 = sub nsw i32 %383, %384
  %386 = load i32, i32* %15, align 4
  %387 = add nsw i32 %386, 1
  %388 = call i32 @gen_field_fetch(%struct.TYPE_2__* %378, i8** %382, i32 %385, i32* %42, i32 %387, i32 1)
  store i32 %388, i32* %15, align 4
  %389 = load i32, i32* %15, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %371
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

392:                                              ; preds = %371
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %8, align 4
  %395 = add nsw i32 %394, %393
  store i32 %395, i32* %8, align 4
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* %8, align 4
  %398 = sub nsw i32 %396, %397
  %399 = icmp sle i32 %398, 10
  br i1 %399, label %400, label %401

400:                                              ; preds = %392
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

401:                                              ; preds = %392
  %402 = load i8*, i8** @tlsub_ret_ok, align 8
  %403 = load i8**, i8*** %6, align 8
  %404 = load i32, i32* %8, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %8, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i8*, i8** %403, i64 %406
  store i8* %402, i8** %407, align 8
  %408 = load i8**, i8*** %6, align 8
  %409 = load i32, i32* %8, align 4
  %410 = call i8* @IP_dup(i8** %408, i32 %409)
  %411 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %412 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %411, i32 0, i32 4
  store i8* %410, i8** %412, align 8
  %413 = load i32, i32* %8, align 4
  %414 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %415 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load i32, i32* %8, align 4
  store i32 %416, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

417:                                              ; preds = %368
  br label %418

418:                                              ; preds = %417, %329
  br label %419

419:                                              ; preds = %418, %322
  store i32 0, i32* %9, align 4
  br label %420

420:                                              ; preds = %465, %419
  %421 = load i32, i32* %9, align 4
  %422 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %423 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = icmp slt i32 %421, %424
  br i1 %425, label %426, label %468

426:                                              ; preds = %420
  %427 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %428 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %427, i32 0, i32 5
  %429 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %428, align 8
  %430 = load i32, i32* %9, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %429, i64 %431
  %433 = load %struct.TYPE_2__*, %struct.TYPE_2__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @FLAG_OPT_VAR, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %464, label %439

439:                                              ; preds = %426
  %440 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %441 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %440, i32 0, i32 5
  %442 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %441, align 8
  %443 = load i32, i32* %9, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %442, i64 %444
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** %445, align 8
  %447 = load i8**, i8*** %6, align 8
  %448 = load i32, i32* %8, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %447, i64 %449
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %8, align 4
  %453 = sub nsw i32 %451, %452
  %454 = load i32, i32* %9, align 4
  %455 = add nsw i32 %454, 1
  %456 = call i32 @gen_field_fetch(%struct.TYPE_2__* %446, i8** %450, i32 %453, i32* %42, i32 %455, i32 0)
  store i32 %456, i32* %12, align 4
  %457 = load i32, i32* %12, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %439
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

460:                                              ; preds = %439
  %461 = load i32, i32* %12, align 4
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %462, %461
  store i32 %463, i32* %8, align 4
  br label %464

464:                                              ; preds = %460, %426
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %9, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %9, align 4
  br label %420

468:                                              ; preds = %420
  %469 = load i32, i32* %7, align 4
  %470 = load i32, i32* %8, align 4
  %471 = sub nsw i32 %469, %470
  %472 = icmp sle i32 %471, 10
  br i1 %472, label %473, label %474

473:                                              ; preds = %468
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

474:                                              ; preds = %468
  %475 = load i8*, i8** @tlsub_ret_ok, align 8
  %476 = load i8**, i8*** %6, align 8
  %477 = load i32, i32* %8, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %8, align 4
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds i8*, i8** %476, i64 %479
  store i8* %475, i8** %480, align 8
  %481 = load i8**, i8*** %6, align 8
  %482 = load i32, i32* %8, align 4
  %483 = call i8* @IP_dup(i8** %481, i32 %482)
  %484 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %485 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %484, i32 0, i32 4
  store i8* %483, i8** %485, align 8
  %486 = load i32, i32* %8, align 4
  %487 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %488 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %487, i32 0, i32 0
  store i32 %486, i32* %488, align 8
  %489 = load i32, i32* %8, align 4
  store i32 %489, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %490

490:                                              ; preds = %474, %473, %459, %401, %400, %391, %293, %265, %222, %185, %157, %129, %101, %73, %63
  %491 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %491)
  br label %492

492:                                              ; preds = %490, %28, %21
  %493 = load i32, i32* %4, align 4
  ret i32 %493
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gen_uni(i64, i8**, i32, i32*) #1

declare dso_local i8* @IP_dup(i8**, i32) #1

declare dso_local i64 @TYPE(i64) #1

declare dso_local i32 @gen_field_fetch(%struct.TYPE_2__*, i8**, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
