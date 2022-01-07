; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_validation_recursive.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_validation_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EOC: unexpected end of content\00", align 1
@PTLS_ERROR_BER_UNEXPECTED_EOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"EOC\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_asn1_validation_recursive(i64* %0, i64 %1, i32* %2, i32 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = call i64 @ptls_asn1_read_type(i64* %18, i64 %19, i32* %11, i32* %12, i32* %13, i32* %20, i32 %21, %struct.TYPE_9__* %22)
  store i64 %23, i64* %17, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = call i32 @ptls_asn1_print_type(i32 %31, i32 %32, i32 %33, %struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %30, %27, %5
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = call i64 @ptls_asn1_read_length(i64* %37, i64 %38, i64 %39, i32* %14, i32* %15, i64* %16, i32* %40, i32 %41, %struct.TYPE_9__* %42)
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %181

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %173

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32 (i32, i8*)*, i32 (i32, i8*)** %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %56(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %53, %50
  br label %62

62:                                               ; preds = %157, %61
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %158

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %66
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %17, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %69
  %76 = load i64, i64* %17, align 8
  %77 = add i64 %76, 2
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %17, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80, %75
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89, i32 %91, %struct.TYPE_9__* %92)
  store i64 %93, i64* %17, align 8
  %94 = load i32, i32* @PTLS_ERROR_BER_UNEXPECTED_EOC, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i64, i64* %7, align 8
  store i64 %96, i64* %17, align 8
  br label %158

97:                                               ; preds = %80
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = icmp ne %struct.TYPE_9__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = call i32 @ptls_asn1_print_indent(i32 %101, %struct.TYPE_9__* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32 (i32, i8*)*, i32 (i32, i8*)** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %106(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %100, %97
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 2
  store i64 %113, i64* %17, align 8
  br label %158

114:                                              ; preds = %69, %66
  %115 = load i64*, i64** %6, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = sub i64 %118, %119
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %125 = call i64 @ptls_asn1_validation_recursive(i64* %117, i64 %120, i32* %121, i32 %123, %struct.TYPE_9__* %124)
  %126 = load i64, i64* %17, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %17, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %114
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %17, align 8
  br label %158

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %136 = icmp ne %struct.TYPE_9__* %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %16, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32 (i32, i8*)*, i32 (i32, i8*)** %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 %144(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %149

149:                                              ; preds = %141, %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32 (i32, i8*)*, i32 (i32, i8*)** %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 %152(i32 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %149, %134
  br label %62

158:                                              ; preds = %131, %111, %87, %62
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %160 = icmp ne %struct.TYPE_9__* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = call i32 @ptls_asn1_print_indent(i32 %162, %struct.TYPE_9__* %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32 (i32, i8*)*, i32 (i32, i8*)** %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 %167(i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %161, %158
  br label %180

173:                                              ; preds = %47
  %174 = load i64*, i64** %6, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* %17, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %178 = call i32 @ptls_asn1_dump_content(i64* %174, i64 %175, i64 %176, %struct.TYPE_9__* %177)
  %179 = load i64, i64* %16, align 8
  store i64 %179, i64* %17, align 8
  br label %180

180:                                              ; preds = %173, %172
  br label %181

181:                                              ; preds = %180, %36
  %182 = load i64, i64* %17, align 8
  ret i64 %182
}

declare dso_local i64 @ptls_asn1_read_type(i64*, i64, i32*, i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ptls_asn1_print_type(i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ptls_asn1_read_length(i64*, i64, i64, i32*, i32*, i64*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ptls_asn1_error_message(i8*, i64, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ptls_asn1_print_indent(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ptls_asn1_dump_content(i64*, i64, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
