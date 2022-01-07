; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_DelBanFromList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_DelBanFromList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@com_sv_running = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s (ip[/subnet] | num)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error: Invalid address %s\0A\00", align 1
@serverBansCount = common dso_local global i32 0, align 4
@serverBans = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Deleting %s %s/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ban\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Error: Invalid ban number given\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @SV_DelBanFromList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_DelBanFromList(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_sv_running, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %147

16:                                               ; preds = %1
  %17 = call i32 (...) @Cmd_Argc()
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i8* @Cmd_Argv(i32 0)
  %21 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %147

22:                                               ; preds = %16
  %23 = call i8* @Cmd_Argv(i32 1)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strchr(i8* %24, i8 signext 46)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strchr(i8* %28, i8 signext 58)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %27, %22
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @SV_ParseCIDRNotation(i32* %7, i32* %6, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %147

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %85, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @serverBansCount, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @serverBans, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %9, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @NET_CompareBaseAdrMask(i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = load i64, i64* %2, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NET_AdrToString(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 %75, i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @SV_DelBanEntryFromList(i32 %80)
  br label %85

82:                                               ; preds = %59, %53, %43
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %67
  br label %39

86:                                               ; preds = %39
  br label %145

87:                                               ; preds = %27
  %88 = call i8* @Cmd_Argv(i32 1)
  %89 = call i32 @atoi(i8* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @serverBansCount, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %87
  %97 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %147

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %141, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @serverBansCount, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %144

103:                                              ; preds = %99
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @serverBans, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %2, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %103
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %112
  %119 = load i64, i64* %2, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @serverBans, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @NET_AdrToString(i32 %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @serverBans, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %122, i32 %129, i32 %135)
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @SV_DelBanEntryFromList(i32 %137)
  br label %144

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %99

144:                                              ; preds = %118, %99
  br label %145

145:                                              ; preds = %144, %86
  %146 = call i32 (...) @SV_WriteBans()
  br label %147

147:                                              ; preds = %145, %96, %35, %19, %14
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @SV_ParseCIDRNotation(i32*, i32*, i8*) #1

declare dso_local i64 @NET_CompareBaseAdrMask(i32, i32, i32) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @SV_DelBanEntryFromList(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @SV_WriteBans(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
