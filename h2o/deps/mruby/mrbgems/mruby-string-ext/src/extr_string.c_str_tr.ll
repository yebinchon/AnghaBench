; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_tr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i32 }

@STATIC_TR_PATTERN = common dso_local global %struct.tr_pattern zeroinitializer, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"character (%S) out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i64)* @str_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_tr(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tr_pattern, align 4
  %12 = alloca %struct.tr_pattern, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.tr_pattern*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %22 = bitcast %struct.tr_pattern* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.tr_pattern* @STATIC_TR_PATTERN to i8*), i64 4, i1 false)
  %23 = bitcast %struct.tr_pattern* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.tr_pattern* @STATIC_TR_PATTERN to i8*), i64 4, i1 false)
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %17, align 8
  store i64 -1, i64* %18, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mrb_str_ptr(i32 %26)
  %28 = call i32 @mrb_str_modify(i32* %25, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* @TRUE, align 8
  %32 = call %struct.tr_pattern* @tr_parse_pattern(i32* %29, %struct.tr_pattern* %11, i32 %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* @FALSE, align 8
  %36 = call %struct.tr_pattern* @tr_parse_pattern(i32* %33, %struct.tr_pattern* %12, i32 %34, i64 %35)
  store %struct.tr_pattern* %36, %struct.tr_pattern** %19, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @RSTRING_PTR(i32 %37)
  store i8* %38, i8** %13, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @RSTRING_LEN(i32 %39)
  store i64 %40, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %41

41:                                               ; preds = %110, %5
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @RSTRING_PTR(i32 %46)
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @tr_find_character(%struct.tr_pattern* %11, i8* %47, i8 signext %51)
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %56, %45
  %65 = load i64, i64* %20, align 8
  %66 = icmp uge i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %17, align 8
  %69 = load %struct.tr_pattern*, %struct.tr_pattern** %19, align 8
  %70 = icmp eq %struct.tr_pattern* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %16, align 8
  br label %108

74:                                               ; preds = %67
  %75 = load %struct.tr_pattern*, %struct.tr_pattern** %19, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i8* @RSTRING_PTR(i32 %76)
  %78 = load i64, i64* %20, align 8
  %79 = call i64 @tr_get_character(%struct.tr_pattern* %75, i8* %77, i64 %78)
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %21, align 8
  %81 = icmp ult i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %74
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %16, align 8
  br label %110

92:                                               ; preds = %85, %82
  %93 = load i64, i64* %21, align 8
  %94 = icmp ugt i64 %93, 128
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @mrb_fixnum_value(i64 %98)
  %100 = call i32 @mrb_raisef(i32* %96, i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i64, i64* %21, align 8
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %21, align 8
  %104 = trunc i64 %103 to i8
  %105 = load i8*, i8** %13, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

108:                                              ; preds = %101, %71
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i64, i64* %15, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %16, align 8
  br label %41

115:                                              ; preds = %41
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @tr_free_pattern(i32* %116, %struct.tr_pattern* %11)
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.tr_pattern*, %struct.tr_pattern** %19, align 8
  %120 = call i32 @tr_free_pattern(i32* %118, %struct.tr_pattern* %119)
  %121 = load i64, i64* %17, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @RSTRING(i32 %124)
  %126 = load i64, i64* %16, align 8
  %127 = call i32 @RSTR_SET_LEN(i32 %125, i64 %126)
  %128 = load i32, i32* %7, align 4
  %129 = call i8* @RSTRING_PTR(i32 %128)
  %130 = load i64, i64* %16, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %123, %115
  %133 = load i64, i64* %17, align 8
  ret i64 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_str_modify(i32*, i32) #2

declare dso_local i32 @mrb_str_ptr(i32) #2

declare dso_local %struct.tr_pattern* @tr_parse_pattern(i32*, %struct.tr_pattern*, i32, i64) #2

declare dso_local i8* @RSTRING_PTR(i32) #2

declare dso_local i64 @RSTRING_LEN(i32) #2

declare dso_local i64 @tr_find_character(%struct.tr_pattern*, i8*, i8 signext) #2

declare dso_local i64 @tr_get_character(%struct.tr_pattern*, i8*, i64) #2

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #2

declare dso_local i32 @mrb_fixnum_value(i64) #2

declare dso_local i32 @tr_free_pattern(i32*, %struct.tr_pattern*) #2

declare dso_local i32 @RSTR_SET_LEN(i32, i64) #2

declare dso_local i32 @RSTRING(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
