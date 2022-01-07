; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_SetQdirFromPath.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_SetQdirFromPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASEDIRNAME = common dso_local global i8* null, align 8
@qdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"qdir: %s\0A\00", align 1
@gamedir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"gamedir: %s\0A\00", align 1
@writedir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"No gamedir in %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SetQdirFromPath: no '%s' in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetQdirFromPath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %33, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = call i32 @Q_getwd(i8* %27)
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strcat(i8* %29, i8* %30)
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %26, %20, %14, %1
  %34 = load i8*, i8** @BASEDIRNAME, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %214, %33
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %217

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** @BASEDIRNAME, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @Q_strncasecmp(i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %213, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %74, %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 47
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 92
  br label %72

72:                                               ; preds = %67, %62, %57
  %73 = phi i1 [ false, %62 ], [ false, %57 ], [ %71, %67 ]
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %57

79:                                               ; preds = %72
  %80 = load i8*, i8** @qdir, align 8
  %81 = load i8*, i8** %2, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8*, i8** %2, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @strncpy(i8* %80, i8* %81, i32 %93)
  %95 = load i8*, i8** @qdir, align 8
  %96 = call i32 @Sys_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %95)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %117, %79
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load i8*, i8** @qdir, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i8*, i8** @qdir, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 92
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i8*, i8** @qdir, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 47, i8* %115, align 1
  br label %116

116:                                              ; preds = %111, %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %97

120:                                              ; preds = %97
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i8*, i8** %4, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %4, align 8
  br label %127

127:                                              ; preds = %207, %120
  %128 = load i8*, i8** %4, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %210

131:                                              ; preds = %127
  %132 = load i8*, i8** %4, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 47
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %4, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 92
  br i1 %140, label %141, label %207

141:                                              ; preds = %136, %131
  %142 = load i8*, i8** @gamedir, align 8
  %143 = load i8*, i8** %2, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8*, i8** %2, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @strncpy(i8* %142, i8* %143, i32 %150)
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %172, %141
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = load i8*, i8** @gamedir, align 8
  %156 = call i64 @strlen(i8* %155)
  %157 = icmp ult i64 %154, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %152
  %159 = load i8*, i8** @gamedir, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 92
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i8*, i8** @gamedir, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 47, i8* %170, align 1
  br label %171

171:                                              ; preds = %166, %158
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %152

175:                                              ; preds = %152
  %176 = load i8*, i8** @gamedir, align 8
  %177 = call i32 @Sys_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %176)
  %178 = load i8*, i8** @writedir, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i8*, i8** @writedir, align 8
  %184 = load i8*, i8** @gamedir, align 8
  %185 = call i32 @strcpy(i8* %183, i8* %184)
  br label %206

186:                                              ; preds = %175
  %187 = load i8*, i8** @writedir, align 8
  %188 = load i8*, i8** @writedir, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = sub i64 %189, 1
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 47
  br i1 %194, label %195, label %205

195:                                              ; preds = %186
  %196 = load i8*, i8** @writedir, align 8
  %197 = load i8*, i8** @writedir, align 8
  %198 = call i64 @strlen(i8* %197)
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  store i8 47, i8* %199, align 1
  %200 = load i8*, i8** @writedir, align 8
  %201 = load i8*, i8** @writedir, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 0, i8* %204, align 1
  br label %205

205:                                              ; preds = %195, %186
  br label %206

206:                                              ; preds = %205, %182
  br label %221

207:                                              ; preds = %136
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %4, align 8
  br label %127

210:                                              ; preds = %127
  %211 = load i8*, i8** %2, align 8
  %212 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %211)
  br label %221

213:                                              ; preds = %46
  br label %214

214:                                              ; preds = %213
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 -1
  store i8* %216, i8** %4, align 8
  br label %42

217:                                              ; preds = %42
  %218 = load i8*, i8** @BASEDIRNAME, align 8
  %219 = load i8*, i8** %2, align 8
  %220 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %218, i8* %219)
  br label %221

221:                                              ; preds = %217, %210, %206
  ret void
}

declare dso_local i32 @Q_getwd(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
