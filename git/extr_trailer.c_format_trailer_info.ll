; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_format_trailer_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_format_trailer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.trailer_info = type { i64, i8**, i64, i64 }
%struct.process_trailer_options = type { %struct.strbuf*, i32, i32, i64, i32, i64 (%struct.strbuf*, i32)* }

@separators = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.trailer_info*, %struct.process_trailer_options*)* @format_trailer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_trailer_info(%struct.strbuf* %0, %struct.trailer_info* %1, %struct.process_trailer_options* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.trailer_info*, align 8
  %6 = alloca %struct.process_trailer_options*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.strbuf, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.trailer_info* %1, %struct.trailer_info** %5, align 8
  store %struct.process_trailer_options* %2, %struct.process_trailer_options** %6, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %17 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %3
  %21 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %22 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %20
  %26 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %27 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %26, i32 0, i32 5
  %28 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %27, align 8
  %29 = icmp ne i64 (%struct.strbuf*, i32)* %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %32 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %31, i32 0, i32 0
  %33 = load %struct.strbuf*, %struct.strbuf** %32, align 8
  %34 = icmp ne %struct.strbuf* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %37 = load %struct.trailer_info*, %struct.trailer_info** %5, align 8
  %38 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.trailer_info*, %struct.trailer_info** %5, align 8
  %41 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.trailer_info*, %struct.trailer_info** %5, align 8
  %44 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @strbuf_add(%struct.strbuf* %36, i64 %39, i64 %46)
  br label %173

48:                                               ; preds = %30, %25, %20, %3
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %170, %48
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.trailer_info*, %struct.trailer_info** %5, align 8
  %52 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %173

55:                                               ; preds = %49
  %56 = load %struct.trailer_info*, %struct.trailer_info** %5, align 8
  %57 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* @separators, align 4
  %64 = call i32 @find_separator(i8* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %134

67:                                               ; preds = %55
  %68 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %69 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @parse_trailer(%struct.strbuf* %11, %struct.strbuf* %12, i32* null, i8* %70, i32 %71)
  %73 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %74 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %73, i32 0, i32 5
  %75 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %74, align 8
  %76 = icmp ne i64 (%struct.strbuf*, i32)* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %79 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %78, i32 0, i32 5
  %80 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %79, align 8
  %81 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %82 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i64 %80(%struct.strbuf* %11, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %131

86:                                               ; preds = %77, %67
  %87 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %88 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @unfold_value(%struct.strbuf* %12)
  br label %93

93:                                               ; preds = %91, %86
  %94 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %95 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %94, i32 0, i32 0
  %96 = load %struct.strbuf*, %struct.strbuf** %95, align 8
  %97 = icmp ne %struct.strbuf* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %107 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %106, i32 0, i32 0
  %108 = load %struct.strbuf*, %struct.strbuf** %107, align 8
  %109 = call i32 @strbuf_addbuf(%struct.strbuf* %105, %struct.strbuf* %108)
  br label %110

110:                                              ; preds = %104, %98, %93
  %111 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %112 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %117 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strbuf_addf(%struct.strbuf* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %122 = call i32 @strbuf_addbuf(%struct.strbuf* %121, %struct.strbuf* %12)
  %123 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %124 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %123, i32 0, i32 0
  %125 = load %struct.strbuf*, %struct.strbuf** %124, align 8
  %126 = icmp ne %struct.strbuf* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %129 = call i32 @strbuf_addch(%struct.strbuf* %128, i8 signext 10)
  br label %130

130:                                              ; preds = %127, %120
  br label %131

131:                                              ; preds = %130, %77
  %132 = call i32 @strbuf_release(%struct.strbuf* %11)
  %133 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %169

134:                                              ; preds = %55
  %135 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %136 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %168, label %139

139:                                              ; preds = %134
  %140 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %141 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %140, i32 0, i32 0
  %142 = load %struct.strbuf*, %struct.strbuf** %141, align 8
  %143 = icmp ne %struct.strbuf* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %152 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %153 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %152, i32 0, i32 0
  %154 = load %struct.strbuf*, %struct.strbuf** %153, align 8
  %155 = call i32 @strbuf_addbuf(%struct.strbuf* %151, %struct.strbuf* %154)
  br label %156

156:                                              ; preds = %150, %144, %139
  %157 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @strbuf_addstr(%struct.strbuf* %157, i8* %158)
  %160 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %161 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %160, i32 0, i32 0
  %162 = load %struct.strbuf*, %struct.strbuf** %161, align 8
  %163 = icmp ne %struct.strbuf* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %166 = call i32 @strbuf_rtrim(%struct.strbuf* %165)
  br label %167

167:                                              ; preds = %164, %156
  br label %168

168:                                              ; preds = %167, %134
  br label %169

169:                                              ; preds = %168, %131
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %49

173:                                              ; preds = %35, %49
  ret void
}

declare dso_local i32 @strbuf_add(%struct.strbuf*, i64, i64) #1

declare dso_local i32 @find_separator(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_trailer(%struct.strbuf*, %struct.strbuf*, i32*, i8*, i32) #1

declare dso_local i32 @unfold_value(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
