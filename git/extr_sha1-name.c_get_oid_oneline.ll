; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_oneline.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_oneline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_list = type { %struct.TYPE_7__*, %struct.commit_list* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@REG_EXTENDED = common dso_local global i32 0, align 4
@ONELINE_SEEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.object_id*, %struct.commit_list*)* @get_oid_oneline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oid_oneline(%struct.repository* %0, i8* %1, %struct.object_id* %2, %struct.commit_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.commit_list* %3, %struct.commit_list** %9, align 8
  store %struct.commit_list* null, %struct.commit_list** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 33
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  store i32 1, i32* %13, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 33
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %141

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @REG_EXTENDED, align 4
  %47 = call i64 @regcomp(i32* %14, i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %141

50:                                               ; preds = %44
  %51 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %51, %struct.commit_list** %11, align 8
  br label %52

52:                                               ; preds = %68, %50
  %53 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %54 = icmp ne %struct.commit_list* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i32, i32* @ONELINE_SEEN, align 4
  %57 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %58 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  %64 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %65 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = call i32 @commit_list_insert(%struct.TYPE_7__* %66, %struct.commit_list** %10)
  br label %68

68:                                               ; preds = %55
  %69 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %70 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %69, i32 0, i32 1
  %71 = load %struct.commit_list*, %struct.commit_list** %70, align 8
  store %struct.commit_list* %71, %struct.commit_list** %11, align 8
  br label %52

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %115, %85, %72
  %74 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %75 = icmp ne %struct.commit_list* %74, null
  br i1 %75, label %76, label %116

76:                                               ; preds = %73
  %77 = load i32, i32* @ONELINE_SEEN, align 4
  %78 = call %struct.commit* @pop_most_recent_commit(%struct.commit_list** %9, i32 %77)
  store %struct.commit* %78, %struct.commit** %17, align 8
  %79 = load %struct.repository*, %struct.repository** %6, align 8
  %80 = load %struct.commit*, %struct.commit** %17, align 8
  %81 = getelementptr inbounds %struct.commit, %struct.commit* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @parse_object(%struct.repository* %79, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %73

86:                                               ; preds = %76
  %87 = load %struct.commit*, %struct.commit** %17, align 8
  %88 = call i8* @get_commit_buffer(%struct.commit* %87, i32* null)
  store i8* %88, i8** %16, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = call i8* @strstr(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %90, i8** %15, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = call i32 @regexec(i32* %14, i8* %96, i32 0, i32* null, i32 0)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %94, %86
  %101 = phi i1 [ false, %86 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = xor i32 %91, %102
  store i32 %103, i32* %18, align 4
  %104 = load %struct.commit*, %struct.commit** %17, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @unuse_commit_buffer(%struct.commit* %104, i8* %105)
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.object_id*, %struct.object_id** %8, align 8
  %111 = load %struct.commit*, %struct.commit** %17, align 8
  %112 = getelementptr inbounds %struct.commit, %struct.commit* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @oidcpy(%struct.object_id* %110, i32* %113)
  store i32 1, i32* %12, align 4
  br label %116

115:                                              ; preds = %100
  br label %73

116:                                              ; preds = %109, %73
  %117 = call i32 @regfree(i32* %14)
  %118 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %119 = call i32 @free_commit_list(%struct.commit_list* %118)
  %120 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %120, %struct.commit_list** %11, align 8
  br label %121

121:                                              ; preds = %130, %116
  %122 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %123 = icmp ne %struct.commit_list* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %126 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* @ONELINE_SEEN, align 4
  %129 = call i32 @clear_commit_marks(%struct.TYPE_7__* %127, i32 %128)
  br label %130

130:                                              ; preds = %124
  %131 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %132 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %131, i32 0, i32 1
  %133 = load %struct.commit_list*, %struct.commit_list** %132, align 8
  store %struct.commit_list* %133, %struct.commit_list** %11, align 8
  br label %121

134:                                              ; preds = %121
  %135 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %136 = call i32 @free_commit_list(%struct.commit_list* %135)
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 0, i32 -1
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %134, %49, %41
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @commit_list_insert(%struct.TYPE_7__*, %struct.commit_list**) #1

declare dso_local %struct.commit* @pop_most_recent_commit(%struct.commit_list**, i32) #1

declare dso_local i32 @parse_object(%struct.repository*, i32*) #1

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @clear_commit_marks(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
