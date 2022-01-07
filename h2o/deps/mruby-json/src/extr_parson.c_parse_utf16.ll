; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_parse_utf16.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_parse_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i32 0, align 4
@JSONSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @parse_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_utf16(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @parse_utf16_hex(i8* %18, i32* %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @JSONFailure, align 4
  store i32 %23, i32* %3, align 4
  br label %168

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 128
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %31, align 1
  br label %160

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %33, 2048
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 31
  %39 = or i32 %38, 192
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 63
  %45 = or i32 %44, 128
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %10, align 8
  br label %159

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %52, 55296
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ugt i32 %55, 57343
  br i1 %56, label %57, label %80

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %6, align 4
  %59 = lshr i32 %58, 12
  %60 = and i32 %59, 15
  %61 = or i32 %60, 224
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %6, align 4
  %66 = lshr i32 %65, 6
  %67 = and i32 %66, 63
  %68 = or i32 %67, 128
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 63
  %74 = or i32 %73, 128
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 1
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %10, align 8
  br label %158

80:                                               ; preds = %54
  %81 = load i32, i32* %6, align 4
  %82 = icmp uge i32 %81, 55296
  br i1 %82, label %83, label %155

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = icmp ule i32 %84, 56319
  br i1 %85, label %86, label %155

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %11, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 92
  br i1 %94, label %101, label %95

95:                                               ; preds = %86
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %11, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 117
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %86
  %102 = load i32, i32* @JSONFailure, align 4
  store i32 %102, i32* %3, align 4
  br label %168

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @parse_utf16_hex(i8* %104, i32* %8)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = icmp ult i32 %109, 56320
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp ugt i32 %112, 57343
  br i1 %113, label %114, label %116

114:                                              ; preds = %111, %108, %103
  %115 = load i32, i32* @JSONFailure, align 4
  store i32 %115, i32* %3, align 4
  br label %168

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = sub i32 %117, 55296
  %119 = and i32 %118, 1023
  %120 = shl i32 %119, 10
  %121 = load i32, i32* %8, align 4
  %122 = sub i32 %121, 56320
  %123 = and i32 %122, 1023
  %124 = or i32 %120, %123
  %125 = add i32 %124, 65536
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = lshr i32 %126, 18
  %128 = and i32 %127, 7
  %129 = or i32 %128, 240
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  store i8 %130, i8* %132, align 1
  %133 = load i32, i32* %6, align 4
  %134 = lshr i32 %133, 12
  %135 = and i32 %134, 63
  %136 = or i32 %135, 128
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %137, i8* %139, align 1
  %140 = load i32, i32* %6, align 4
  %141 = lshr i32 %140, 6
  %142 = and i32 %141, 63
  %143 = or i32 %142, 128
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8 %144, i8* %146, align 1
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, 63
  %149 = or i32 %148, 128
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  store i8 %150, i8* %152, align 1
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 3
  store i8* %154, i8** %10, align 8
  br label %157

155:                                              ; preds = %83, %80
  %156 = load i32, i32* @JSONFailure, align 4
  store i32 %156, i32* %3, align 4
  br label %168

157:                                              ; preds = %116
  br label %158

158:                                              ; preds = %157, %57
  br label %159

159:                                              ; preds = %158, %35
  br label %160

160:                                              ; preds = %159, %27
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 3
  store i8* %162, i8** %11, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i8**, i8*** %5, align 8
  store i8* %163, i8** %164, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8**, i8*** %4, align 8
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @JSONSuccess, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %160, %155, %114, %101, %22
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @parse_utf16_hex(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
