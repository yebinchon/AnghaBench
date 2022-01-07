; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_UserinfoChanged.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_UserinfoChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, %struct.TYPE_8__, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@com_dedicated = common dso_local global %struct.TYPE_12__* null, align 8
@sv_lanForceRate = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@sv_fps = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"userinfo string length exceeded\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_UserinfoChanged(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @Info_ValueForKey(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @Q_strncpyz(i32 %9, i8* %13, i32 4)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @Sys_IsLANAddress(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_lanForceRate, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  br label %69

34:                                               ; preds = %26, %21, %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @Info_ValueForKey(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %34
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 1000
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 1000, i32* %54, align 8
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 90000
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 90000, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %52
  br label %68

65:                                               ; preds = %34
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 3000, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @Info_ValueForKey(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @atoi(i8* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 100
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = icmp sgt i32 %87, 4
  br i1 %88, label %89, label %94

89:                                               ; preds = %85, %82, %77
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @Info_SetValueForKey(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @Info_ValueForKey(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %99, i8** %3, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %95
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @atoi(i8* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 1, i32* %5, align 4
  br label %120

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_fps, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_fps, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i32, i32* %5, align 4
  %122 = sdiv i32 1000, %121
  store i32 %122, i32* %5, align 4
  br label %124

123:                                              ; preds = %95
  store i32 50, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @NET_IsLocalAddress(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %151

144:                                              ; preds = %136
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @NET_AdrToString(i32 %148)
  %150 = inttoptr i64 %149 to i8*
  store i8* %150, i8** %4, align 8
  br label %151

151:                                              ; preds = %144, %143
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @Info_ValueForKey(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8* %155, i8** %3, align 8
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %151
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 @strlen(i8* %163)
  %165 = sub nsw i32 %162, %164
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strlen(i8* %168)
  %170 = add nsw i32 %165, %169
  store i32 %170, i32* %6, align 4
  br label %180

171:                                              ; preds = %151
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @strlen(i8* %172)
  %174 = add nsw i32 %173, 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strlen(i8* %177)
  %179 = add nsw i32 %174, %178
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %171, %160
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @MAX_INFO_STRING, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = call i32 @SV_DropClient(%struct.TYPE_9__* %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %193

187:                                              ; preds = %180
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %4, align 8
  %192 = call i32 @Info_SetValueForKey(i8* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %187, %184
  ret void
}

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i64 @Sys_IsLANAddress(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #1

declare dso_local i64 @NET_IsLocalAddress(i32) #1

declare dso_local i64 @NET_AdrToString(i32) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
