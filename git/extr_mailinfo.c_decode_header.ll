; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_decode_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.mailinfo = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"?=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_header(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 1, i32* %12, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %172, %2
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp sle i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi i1 [ false, %21 ], [ %37, %34 ]
  br i1 %39, label %40, label %181

40:                                               ; preds = %38
  %41 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %42 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** %14, align 8
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isspace(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %14, align 8
  br label %48

62:                                               ; preds = %57, %48
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66, %62
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @strbuf_add(%struct.strbuf* %8, i8* %73, i32 %79)
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %85 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp sge i64 %91, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %82
  %98 = load i8*, i8** %6, align 8
  %99 = call i8* @strchr(i8* %98, i8 signext 63)
  store i8* %99, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97, %82
  br label %188

102:                                              ; preds = %97
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %104 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp sgt i64 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %188

117:                                              ; preds = %102
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @strbuf_add(%struct.strbuf* %10, i8* %118, i32 %124)
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 63
  br i1 %137, label %138, label %139

138:                                              ; preds = %132, %117
  br label %188

139:                                              ; preds = %132
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  %142 = call i8* @strstr(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %142, i8** %6, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %188

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sub nsw i64 %153, 3
  %155 = trunc i64 %154 to i32
  %156 = call i32 @strbuf_add(%struct.strbuf* %11, i8* %148, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @tolower(i32 %157) #4
  switch i32 %158, label %159 [
    i32 98, label %160
    i32 113, label %162
  ]

159:                                              ; preds = %146
  br label %188

160:                                              ; preds = %146
  %161 = call %struct.strbuf* @decode_b_segment(%struct.strbuf* %11)
  store %struct.strbuf* %161, %struct.strbuf** %9, align 8
  br label %164

162:                                              ; preds = %146
  %163 = call %struct.strbuf* @decode_q_segment(%struct.strbuf* %11, i32 1)
  store %struct.strbuf* %163, %struct.strbuf** %9, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %166 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %167 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @convert_to_utf8(%struct.mailinfo* %165, %struct.strbuf* %166, i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %188

172:                                              ; preds = %164
  %173 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %174 = call i32 @strbuf_addbuf(%struct.strbuf* %8, %struct.strbuf* %173)
  %175 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %176 = call i32 @strbuf_release(%struct.strbuf* %175)
  %177 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %178 = call i32 @free(%struct.strbuf* %177)
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8* %180, i8** %5, align 8
  br label %21

181:                                              ; preds = %38
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 @strbuf_addstr(%struct.strbuf* %8, i8* %182)
  %184 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %185 = call i32 @strbuf_reset(%struct.strbuf* %184)
  %186 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %187 = call i32 @strbuf_addbuf(%struct.strbuf* %186, %struct.strbuf* %8)
  store i32 0, i32* %12, align 4
  br label %188

188:                                              ; preds = %181, %171, %159, %145, %138, %116, %101
  %189 = call i32 @strbuf_release(%struct.strbuf* %8)
  %190 = call i32 @strbuf_release(%struct.strbuf* %10)
  %191 = call i32 @strbuf_release(%struct.strbuf* %11)
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %196 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %195, i32 0, i32 0
  store i32 -1, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %188
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #3

declare dso_local %struct.strbuf* @decode_b_segment(%struct.strbuf*) #2

declare dso_local %struct.strbuf* @decode_q_segment(%struct.strbuf*, i32) #2

declare dso_local i64 @convert_to_utf8(%struct.mailinfo*, %struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
