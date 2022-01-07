; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_split_ident_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_split_ident_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_split = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_ident_line(%struct.ident_split* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ident_split*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ident_split* %0, %struct.ident_split** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  %11 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %12 = call i32 @memset(%struct.ident_split* %11, i32 0, i32 64)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %15 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = icmp ult i8* %23, %27
  br label %29

29:                                               ; preds = %22, %17
  %30 = phi i1 [ false, %17 ], [ %28, %22 ]
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 60
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %40 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %17

45:                                               ; preds = %36, %29
  %46 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %47 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %245

52:                                               ; preds = %45
  %53 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %54 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -2
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %72, %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ule i8* %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %70 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %75

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %8, align 8
  br label %57

75:                                               ; preds = %66, %57
  %76 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %77 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %82 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %85 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %88 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %107, %86
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = icmp ult i8* %91, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 62
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %105 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  br label %110

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  br label %90

110:                                              ; preds = %102, %90
  %111 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %112 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %245

117:                                              ; preds = %110
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  store i8* %122, i8** %8, align 8
  br label %123

123:                                              ; preds = %129, %117
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 62
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 -1
  store i8* %131, i8** %8, align 8
  br label %123

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8* %134, i8** %8, align 8
  br label %135

135:                                              ; preds = %150, %132
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = icmp ult i8* %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @isspace(i8 signext %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %142, %135
  %148 = phi i1 [ false, %135 ], [ %146, %142 ]
  br i1 %148, label %149, label %153

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  br label %135

153:                                              ; preds = %147
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ule i8* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %236

161:                                              ; preds = %153
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %164 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i64 @strspn(i8* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  br label %236

170:                                              ; preds = %161
  %171 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %172 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %177 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %179 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %8, align 8
  br label %181

181:                                              ; preds = %196, %170
  %182 = load i8*, i8** %8, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = icmp ult i8* %182, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load i8*, i8** %8, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call i64 @isspace(i8 signext %190)
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %188, %181
  %194 = phi i1 [ false, %181 ], [ %192, %188 ]
  br i1 %194, label %195, label %199

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %195
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %8, align 8
  br label %181

199:                                              ; preds = %193
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8*, i8** %8, align 8
  %205 = icmp ule i8* %203, %204
  br i1 %205, label %216, label %206

206:                                              ; preds = %199
  %207 = load i8*, i8** %8, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 43
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i8*, i8** %8, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 45
  br i1 %215, label %216, label %217

216:                                              ; preds = %211, %199
  br label %236

217:                                              ; preds = %211, %206
  %218 = load i8*, i8** %8, align 8
  %219 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %220 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %219, i32 0, i32 6
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = call i64 @strspn(i8* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %9, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %217
  br label %236

227:                                              ; preds = %217
  %228 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %229 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %228, i32 0, i32 6
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %235 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %234, i32 0, i32 7
  store i8* %233, i8** %235, align 8
  store i32 0, i32* %4, align 4
  br label %245

236:                                              ; preds = %226, %216, %169, %160
  %237 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %238 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %237, i32 0, i32 4
  store i8* null, i8** %238, align 8
  %239 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %240 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %239, i32 0, i32 5
  store i8* null, i8** %240, align 8
  %241 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %242 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %241, i32 0, i32 6
  store i8* null, i8** %242, align 8
  %243 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %244 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %243, i32 0, i32 7
  store i8* null, i8** %244, align 8
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %236, %227, %115, %50
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @memset(%struct.ident_split*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
