; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, \0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"stat%d,%d#%d\00", align 1
@set = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"add_black_list\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"add_black_list %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"delete_black_list\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"delete_black_list %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* @INIT, align 4
  %24 = load i32, i32* @verbosity, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %7
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @MAX_VALUE_LEN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %136

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @eat_at(i8* %38, i32 %39, i8** %16, i32* %17)
  %41 = load i32, i32* %17, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load i8*, i8** %16, align 8
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 @sscanf(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32* %19, i32* %20)
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %20, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @set, align 4
  %56 = call i32 @RETURN(i32 %55, i32 -2)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.connection*, %struct.connection** %9, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = load i8*, i8** @buf, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @safe_read_in(i32* %59, i8* %60, i32 %61)
  %63 = load i8*, i8** @buf, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i8*, i8** @buf, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @do_isearch_set_stat(i32 %67, i32 %68, i32 %69, i8* %70, i32 %71)
  %73 = load i32, i32* @set, align 4
  %74 = call i32 @RETURN(i32 %73, i32 1)
  br label %75

75:                                               ; preds = %57, %43, %37
  %76 = load i32, i32* %17, align 4
  %77 = icmp sge i32 %76, 14
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @strncmp(i8* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 14)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %78
  %83 = load %struct.connection*, %struct.connection** %9, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 0
  %85 = load i8*, i8** @buf, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @safe_read_in(i32* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** @buf, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* @verbosity, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** @buf, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %82
  %99 = load i8*, i8** @buf, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @do_black_list_add(i8* %99, i32 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* @set, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @RETURN(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %78, %75
  %106 = load i32, i32* %17, align 4
  %107 = icmp sge i32 %106, 17
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %108
  %113 = load %struct.connection*, %struct.connection** %9, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 0
  %115 = load i8*, i8** @buf, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @safe_read_in(i32* %114, i8* %115, i32 %116)
  %118 = load i8*, i8** @buf, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 0, i8* %121, align 1
  %122 = load i32, i32* @verbosity, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** @buf, align 8
  %127 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %112
  %129 = load i8*, i8** @buf, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @do_black_list_delete(i8* %129, i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* @set, align 4
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @RETURN(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %108, %105
  br label %136

136:                                              ; preds = %135, %32
  %137 = load i32, i32* @set, align 4
  %138 = call i32 @RETURN(i32 %137, i32 -2)
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i32 @do_isearch_set_stat(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @do_black_list_add(i8*, i32) #1

declare dso_local i32 @do_black_list_delete(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
