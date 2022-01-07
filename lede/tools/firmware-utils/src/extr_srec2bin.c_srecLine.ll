; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_srecLine.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_srecLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srecLine.RecordCounter = internal global i8* null, align 8
@cur_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not an Srecord file\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Srecord too short\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Count field larger than record\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad Checksum\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid Srecord count field\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Srecord 1 address not zero\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Srecord Not valid for MIPS\00", align 1
@s1s2s3_total = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Invalid Srecord type\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Incorrect number of S3 Record processed\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srecLine(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @cur_line, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @cur_line, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 83
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @SRLerrorout(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %2, align 4
  br label %205

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @SRLerrorout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %2, align 4
  br label %205

29:                                               ; preds = %20
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  store i8 %32, i8* %5, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @gh(i8* %33, i32 2)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** @srecLine.RecordCounter, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @srecLine.RecordCounter, align 8
  %40 = load i8*, i8** @srecLine.RecordCounter, align 8
  %41 = call i32 @DispHex(i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @SRLerrorout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %2, align 4
  br label %205

50:                                               ; preds = %29
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @checksum(i8* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @SRLerrorout(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  store i32 %57, i32* %2, align 4
  br label %205

58:                                               ; preds = %50
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %202 [
    i32 48, label %61
    i32 49, label %81
    i32 50, label %90
    i32 51, label %99
    i32 52, label %135
    i32 53, label %138
    i32 54, label %160
    i32 55, label %163
    i32 56, label %184
    i32 57, label %193
  ]

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %2, align 4
  br label %205

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = call i8* @gh(i8* %68, i32 4)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @SRLerrorout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  store i32 %79, i32* %2, align 4
  br label %205

80:                                               ; preds = %67
  br label %203

81:                                               ; preds = %58
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  store i32 %86, i32* %2, align 4
  br label %205

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @SRLerrorout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %2, align 4
  br label %205

90:                                               ; preds = %58
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  store i32 %95, i32* %2, align 4
  br label %205

96:                                               ; preds = %90
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @SRLerrorout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  store i32 %98, i32* %2, align 4
  br label %205

99:                                               ; preds = %58
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  store i32 %104, i32* %2, align 4
  br label %205

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = call i8* @gh(i8* %106, i32 8)
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  store i8* %109, i8** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %110, 4
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %117, %105
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i8*, i8** %3, align 8
  %119 = call i8* @gh(i8* %118, i32 2)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %122, i8** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %7, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 255
  %128 = trunc i32 %127 to i8
  %129 = call i32 @binRecOutByte(i8* %125, i8 signext %128)
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %9, align 8
  br label %114

132:                                              ; preds = %114
  %133 = load i32, i32* @s1s2s3_total, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @s1s2s3_total, align 4
  br label %203

135:                                              ; preds = %58
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @SRLerrorout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %136)
  store i32 %137, i32* %2, align 4
  br label %205

138:                                              ; preds = %58
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %142)
  store i32 %143, i32* %2, align 4
  br label %205

144:                                              ; preds = %138
  %145 = load i8*, i8** %3, align 8
  %146 = call i8* @gh(i8* %145, i32 4)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %6, align 4
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  store i8* %149, i8** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %150, 2
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @s1s2s3_total, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @SRLerrorout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %157)
  store i32 %158, i32* %2, align 4
  br label %205

159:                                              ; preds = %144
  br label %203

160:                                              ; preds = %58
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @SRLerrorout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %161)
  store i32 %162, i32* %2, align 4
  br label %205

163:                                              ; preds = %58
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 5
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  store i32 %168, i32* %2, align 4
  br label %205

169:                                              ; preds = %163
  %170 = load i8*, i8** %3, align 8
  %171 = call i8* @gh(i8* %170, i32 8)
  store i8* %171, i8** %9, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 8
  store i8* %173, i8** %3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 4
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %179)
  store i32 %180, i32* %2, align 4
  br label %205

181:                                              ; preds = %169
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @binRecOutProgramStart(i8* %182)
  br label %203

184:                                              ; preds = %58
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i8*, i8** %4, align 8
  %189 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %188)
  store i32 %189, i32* %2, align 4
  br label %205

190:                                              ; preds = %184
  %191 = load i8*, i8** %4, align 8
  %192 = call i32 @SRLerrorout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  store i32 %192, i32* %2, align 4
  br label %205

193:                                              ; preds = %58
  %194 = load i32, i32* %7, align 4
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 @SRLerrorout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %197)
  store i32 %198, i32* %2, align 4
  br label %205

199:                                              ; preds = %193
  %200 = load i8*, i8** %4, align 8
  %201 = call i32 @SRLerrorout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %200)
  store i32 %201, i32* %2, align 4
  br label %205

202:                                              ; preds = %58
  br label %203

203:                                              ; preds = %202, %181, %159, %132, %80
  %204 = load i32, i32* @TRUE, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %199, %196, %190, %187, %178, %166, %160, %156, %141, %135, %102, %96, %93, %87, %84, %77, %64, %55, %47, %26, %17
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @SRLerrorout(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @gh(i8*, i32) #1

declare dso_local i32 @DispHex(i8*) #1

declare dso_local i32 @checksum(i8*, i32) #1

declare dso_local i32 @binRecOutByte(i8*, i8 signext) #1

declare dso_local i32 @binRecOutProgramStart(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
