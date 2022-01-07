; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_state.c_mrb_str_pool.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_state.c_mrb_str_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.RString = type { %struct.TYPE_9__, i64, i32, i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@MRB_TT_STRING = common dso_local global i32 0, align 4
@MRB_STR_NOFREE = common dso_local global i64 0, align 8
@RSTRING_EMBED_LEN_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_str_pool(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RString*, align 8
  %6 = alloca %struct.RString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.RString* @mrb_str_ptr(i32 %9)
  store %struct.RString* %10, %struct.RString** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i64 @mrb_malloc(%struct.TYPE_10__* %11, i64 48)
  %13 = inttoptr i64 %12 to %struct.RString*
  store %struct.RString* %13, %struct.RString** %6, align 8
  %14 = load i32, i32* @MRB_TT_STRING, align 4
  %15 = load %struct.RString*, %struct.RString** %6, align 8
  %16 = getelementptr inbounds %struct.RString, %struct.RString* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.RString*, %struct.RString** %6, align 8
  %21 = getelementptr inbounds %struct.RString, %struct.RString* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.RString*, %struct.RString** %5, align 8
  %23 = call i64 @RSTR_NOFREE_P(%struct.RString* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load i64, i64* @MRB_STR_NOFREE, align 8
  %27 = load %struct.RString*, %struct.RString** %6, align 8
  %28 = getelementptr inbounds %struct.RString, %struct.RString* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.RString*, %struct.RString** %5, align 8
  %30 = getelementptr inbounds %struct.RString, %struct.RString* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.RString*, %struct.RString** %6, align 8
  %35 = getelementptr inbounds %struct.RString, %struct.RString* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.RString*, %struct.RString** %5, align 8
  %39 = getelementptr inbounds %struct.RString, %struct.RString* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.RString*, %struct.RString** %6, align 8
  %44 = getelementptr inbounds %struct.RString, %struct.RString* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i64 %42, i64* %46, align 8
  %47 = load %struct.RString*, %struct.RString** %6, align 8
  %48 = getelementptr inbounds %struct.RString, %struct.RString* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %144

52:                                               ; preds = %2
  %53 = load %struct.RString*, %struct.RString** %6, align 8
  %54 = getelementptr inbounds %struct.RString, %struct.RString* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.RString*, %struct.RString** %5, align 8
  %56 = call i64 @RSTR_EMBED_P(%struct.RString* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.RString*, %struct.RString** %5, align 8
  %60 = getelementptr inbounds %struct.RString, %struct.RString* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load %struct.RString*, %struct.RString** %5, align 8
  %64 = call i64 @RSTR_EMBED_LEN(%struct.RString* %63)
  store i64 %64, i64* %8, align 8
  br label %76

65:                                               ; preds = %52
  %66 = load %struct.RString*, %struct.RString** %5, align 8
  %67 = getelementptr inbounds %struct.RString, %struct.RString* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %7, align 8
  %71 = load %struct.RString*, %struct.RString** %5, align 8
  %72 = getelementptr inbounds %struct.RString, %struct.RString* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %65, %58
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @RSTRING_EMBED_LEN_MAX, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load %struct.RString*, %struct.RString** %6, align 8
  %82 = call i32 @RSTR_SET_EMBED_FLAG(%struct.RString* %81)
  %83 = load %struct.RString*, %struct.RString** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @RSTR_SET_EMBED_LEN(%struct.RString* %83, i64 %84)
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.RString*, %struct.RString** %6, align 8
  %90 = getelementptr inbounds %struct.RString, %struct.RString* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @memcpy(i8* %92, i8* %93, i64 %94)
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.RString*, %struct.RString** %6, align 8
  %98 = getelementptr inbounds %struct.RString, %struct.RString* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 0, i8* %102, align 1
  br label %143

103:                                              ; preds = %76
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 1
  %107 = call i64 @mrb_malloc(%struct.TYPE_10__* %104, i64 %106)
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.RString*, %struct.RString** %6, align 8
  %110 = getelementptr inbounds %struct.RString, %struct.RString* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.RString*, %struct.RString** %6, align 8
  %115 = getelementptr inbounds %struct.RString, %struct.RString* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.RString*, %struct.RString** %6, align 8
  %120 = getelementptr inbounds %struct.RString, %struct.RString* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %103
  %127 = load %struct.RString*, %struct.RString** %6, align 8
  %128 = getelementptr inbounds %struct.RString, %struct.RString* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @memcpy(i8* %131, i8* %132, i64 %133)
  br label %135

135:                                              ; preds = %126, %103
  %136 = load %struct.RString*, %struct.RString** %6, align 8
  %137 = getelementptr inbounds %struct.RString, %struct.RString* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %135, %96
  br label %144

144:                                              ; preds = %143, %25
  %145 = load %struct.RString*, %struct.RString** %6, align 8
  %146 = call i32 @RSTR_SET_POOL_FLAG(%struct.RString* %145)
  %147 = load %struct.RString*, %struct.RString** %6, align 8
  %148 = call i32 @MRB_SET_FROZEN_FLAG(%struct.RString* %147)
  %149 = load %struct.RString*, %struct.RString** %6, align 8
  %150 = call i32 @mrb_obj_value(%struct.RString* %149)
  ret i32 %150
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @RSTR_NOFREE_P(%struct.RString*) #1

declare dso_local i64 @RSTR_EMBED_P(%struct.RString*) #1

declare dso_local i64 @RSTR_EMBED_LEN(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_EMBED_FLAG(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_EMBED_LEN(%struct.RString*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @RSTR_SET_POOL_FLAG(%struct.RString*) #1

declare dso_local i32 @MRB_SET_FROZEN_FLAG(%struct.RString*) #1

declare dso_local i32 @mrb_obj_value(%struct.RString*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
