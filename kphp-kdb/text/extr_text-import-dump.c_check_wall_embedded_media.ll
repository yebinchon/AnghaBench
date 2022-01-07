; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_check_wall_embedded_media.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_check_wall_embedded_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"[[audio%*u]]%n\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"[[audio%*d_%*u]]%n\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"app_post\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"[[app_post%*u|%n\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"a_%*u_%*u_%*u|%n\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"p_%*u_%*u_%*u_%*[0-9a-z]|%n\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%*[0-9a-z]]]%n\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"graffiti\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"[[graffiti%*u]]%n\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"photo\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"[[photo%*d_%*u]]%n\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"posted_photo\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"[[posted_photo%*u_%*u_%*[0-9a-z]_%*u]]%n\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"[[video%*u]]%n\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"[[video%*d_%*u]]%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_wall_embedded_media(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %189 [
    i32 97, label %12
    i32 103, label %110
    i32 112, label %128
    i32 118, label %163
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 10
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = call i32 @memcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %190

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %190

36:                                               ; preds = %32, %28
  br label %189

37:                                               ; preds = %15, %12
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 13
  br i1 %39, label %40, label %109

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = call i32 @memcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %45
  store i32 0, i32* %3, align 4
  br label %190

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %72 [
    i32 97, label %60
    i32 112, label %66
  ]

60:                                               ; preds = %53
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  br label %72

66:                                               ; preds = %53
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  br label %72

72:                                               ; preds = %53, %66, %60
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %190

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 93
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 93
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 5, i32* %3, align 4
  br label %190

97:                                               ; preds = %87, %76
  store i32 -1, i32* %7, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %7)
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 5, i32* %3, align 4
  br label %190

108:                                              ; preds = %104, %97
  br label %109

109:                                              ; preds = %108, %40, %37
  br label %189

110:                                              ; preds = %2
  %111 = load i32, i32* %5, align 4
  %112 = icmp sge i32 %111, 13
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = call i32 @memcmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @sscanf(i8* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %6)
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %190

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %113, %110
  br label %189

128:                                              ; preds = %2
  %129 = load i32, i32* %5, align 4
  %130 = icmp sge i32 %129, 10
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = call i32 @memcmp(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @sscanf(i8* %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %6)
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %190

144:                                              ; preds = %140, %136
  br label %189

145:                                              ; preds = %131, %128
  %146 = load i32, i32* %5, align 4
  %147 = icmp sge i32 %146, 23
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = call i32 @memcmp(i8* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 12)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %4, align 8
  %155 = call i32 @sscanf(i8* %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32* %6)
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1, i32* %3, align 4
  br label %190

161:                                              ; preds = %157, %153
  br label %162

162:                                              ; preds = %161, %148, %145
  br label %189

163:                                              ; preds = %2
  %164 = load i32, i32* %5, align 4
  %165 = icmp sge i32 %164, 10
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = call i32 @memcmp(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @sscanf(i8* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %6)
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* %6, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %3, align 4
  br label %190

179:                                              ; preds = %175, %171
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @sscanf(i8* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32* %6)
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* %6, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 1, i32* %3, align 4
  br label %190

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %166, %163
  br label %189

189:                                              ; preds = %2, %188, %162, %144, %127, %109, %36
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %186, %178, %160, %143, %125, %107, %96, %75, %52, %35, %27
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
