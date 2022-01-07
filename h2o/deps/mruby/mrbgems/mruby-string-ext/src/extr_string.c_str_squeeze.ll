; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_squeeze.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_str_squeeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i32 }

@STATIC_TR_PATTERN = common dso_local global %struct.tr_pattern zeroinitializer, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32)* @str_squeeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_squeeze(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr_pattern, align 4
  %8 = alloca %struct.tr_pattern*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [32 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = bitcast %struct.tr_pattern* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.tr_pattern* @STATIC_TR_PATTERN to i8*), i64 4, i1 false)
  store %struct.tr_pattern* null, %struct.tr_pattern** %8, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mrb_str_ptr(i32 %19)
  %21 = call i32 @mrb_str_modify(i32* %18, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mrb_nil_p(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* @TRUE, align 8
  %29 = call %struct.tr_pattern* @tr_parse_pattern(i32* %26, %struct.tr_pattern* %7, i32 %27, i64 %28)
  store %struct.tr_pattern* %29, %struct.tr_pattern** %8, align 8
  %30 = load %struct.tr_pattern*, %struct.tr_pattern** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %33 = call i32 @tr_compile_pattern(%struct.tr_pattern* %30, i32 %31, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.tr_pattern*, %struct.tr_pattern** %8, align 8
  %36 = call i32 @tr_free_pattern(i32* %34, %struct.tr_pattern* %35)
  br label %37

37:                                               ; preds = %25, %3
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @RSTRING_PTR(i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @RSTRING_LEN(i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load %struct.tr_pattern*, %struct.tr_pattern** %8, align 8
  %43 = icmp ne %struct.tr_pattern* %42, null
  br i1 %43, label %44, label %93

44:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %87, %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 %57, i8* %60, align 1
  br label %61

61:                                               ; preds = %53, %49
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @tr_bitmap_detect(i32* %62, i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i64
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %77, %69, %61
  %82 = load i8*, i8** %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i64
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %45

92:                                               ; preds = %45
  br label %141

93:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %135, %93
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 %106, i8* %109, align 1
  br label %110

110:                                              ; preds = %102, %98
  %111 = load i8*, i8** %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i64
  %123 = load i64, i64* %14, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %125, %117, %110
  %130 = load i8*, i8** %11, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i64
  store i64 %134, i64* %14, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %94

140:                                              ; preds = %94
  br label %141

141:                                              ; preds = %140, %92
  %142 = load i64, i64* %13, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @RSTRING(i32 %145)
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @RSTR_SET_LEN(i32 %146, i64 %147)
  %149 = load i32, i32* %5, align 4
  %150 = call i8* @RSTRING_PTR(i32 %149)
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 0, i8* %152, align 1
  br label %153

153:                                              ; preds = %144, %141
  %154 = load i64, i64* %13, align 8
  ret i64 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_str_modify(i32*, i32) #2

declare dso_local i32 @mrb_str_ptr(i32) #2

declare dso_local i32 @mrb_nil_p(i32) #2

declare dso_local %struct.tr_pattern* @tr_parse_pattern(i32*, %struct.tr_pattern*, i32, i64) #2

declare dso_local i32 @tr_compile_pattern(%struct.tr_pattern*, i32, i32*) #2

declare dso_local i32 @tr_free_pattern(i32*, %struct.tr_pattern*) #2

declare dso_local i8* @RSTRING_PTR(i32) #2

declare dso_local i64 @RSTRING_LEN(i32) #2

declare dso_local i64 @tr_bitmap_detect(i32*, i8 signext) #2

declare dso_local i32 @RSTR_SET_LEN(i32, i64) #2

declare dso_local i32 @RSTRING(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
