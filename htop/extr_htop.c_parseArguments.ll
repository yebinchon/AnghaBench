; ModuleID = '/home/carl/AnghaBench/htop/extr_htop.c_parseArguments.c'
source_filename = "/home/carl/AnghaBench/htop/extr_htop.c_parseArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32* }
%struct.option = type { i8*, i8, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@__const.parseArguments.flags = private unnamed_addr constant %struct.TYPE_4__ { i32 -1, i32 0, i32 -1, i32 1, i32 0, i32* null }, align 8
@parseArguments.long_opts = internal global [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -127, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32 0, i32 118 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32 0, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32 0, i32 117 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8 -127, i32 0, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8 -128, i32 0, i32 112 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sort-key\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no-color\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no-colour\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"hvCs:td:u:p:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@Platform_numberOfFields = common dso_local global i32 0, align 4
@Process_fields = common dso_local global %struct.TYPE_5__* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Error: invalid column \22%s\22.\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%16d\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Error: invalid delay value \22%s\22.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Error: invalid user \22%s\22.\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8**)* @parseArguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseArguments(%struct.TYPE_4__* noalias sret %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %14 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_4__* @__const.parseArguments.flags to i8*), i64 32, i1 false)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %135, %3
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt_long(i32 %16, i8** %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @parseArguments.long_opts, i64 0, i64 0), i32* %7)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %136

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %136

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %133 [
    i32 104, label %27
    i32 118, label %29
    i32 115, label %31
    i32 100, label %70
    i32 117, label %93
    i32 67, label %103
    i32 116, label %105
    i32 112, label %107
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @printHelpFlag()
  br label %135

29:                                               ; preds = %25
  %30 = call i32 (...) @printVersionFlag()
  br label %135

31:                                               ; preds = %25
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @Platform_numberOfFields, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Process_fields, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %36

56:                                               ; preds = %36
  %57 = call i32 @exit(i32 0) #4
  unreachable

58:                                               ; preds = %31
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @ColumnsPanel_fieldNameToIndex(i8* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %58
  br label %135

70:                                               ; preds = %25
  %71 = load i8*, i8** @optarg, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %73 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 100
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32 100, i32* %86, align 8
  br label %87

87:                                               ; preds = %85, %81
  br label %92

88:                                               ; preds = %70
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %87
  br label %135

93:                                               ; preds = %25
  %94 = load i8*, i8** @optarg, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %96 = call i32 @Action_setUserOnly(i8* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %93
  br label %135

103:                                              ; preds = %25
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i32 0, i32* %104, align 4
  br label %135

105:                                              ; preds = %25
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store i32 1, i32* %106, align 8
  br label %135

107:                                              ; preds = %25
  %108 = load i8*, i8** @optarg, align 8
  %109 = call i8* @xStrdup(i8* %108)
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strtok_r(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %11)
  store i8* %111, i8** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = call i32* @Hashtable_new(i32 8, i32 0)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  store i32* %116, i32** %117, align 8
  br label %118

118:                                              ; preds = %115, %107
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @atoi(i8* %123)
  store i32 %124, i32* %13, align 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @Hashtable_put(i32* %126, i32 %127, i8* inttoptr (i64 1 to i8*))
  %129 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %11)
  store i8* %129, i8** %12, align 8
  br label %119

130:                                              ; preds = %119
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @free(i8* %131)
  br label %135

133:                                              ; preds = %25
  %134 = call i32 @exit(i32 1) #4
  unreachable

135:                                              ; preds = %130, %105, %103, %102, %92, %69, %29, %27
  br label %15

136:                                              ; preds = %24, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @printHelpFlag(...) #2

declare dso_local i32 @printVersionFlag(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ColumnsPanel_fieldNameToIndex(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @Action_setUserOnly(i8*, i32*) #2

declare dso_local i8* @xStrdup(i8*) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i32* @Hashtable_new(i32, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Hashtable_put(i32*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
