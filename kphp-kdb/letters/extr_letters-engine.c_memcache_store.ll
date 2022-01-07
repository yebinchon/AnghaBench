; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, \0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"letter_priority\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%lld,%d,%d\00", align 1
@MAX_PRIORITY = common dso_local global i32 0, align 4
@MAX_DELAY = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@buf = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%d,%d,%lld\00", align 1

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
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @INIT, align 4
  %27 = load i32, i32* @verbosity, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %7
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %7
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @MAX_VALUE_LEN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %130

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @eat_at(i8* %41, i32 %42, i8** %16, i32* %17)
  %44 = load i32, i32* %17, align 4
  %45 = icmp sge i32 %44, 15
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %46
  store i32 0, i32* %20, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 15
  %53 = call i32 (i8*, i8*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %19, i32* %18, i32* %20)
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %18, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @MAX_PRIORITY, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @MAX_DELAY, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %62, %58, %55, %50
  %70 = load i32, i32* @set, align 4
  %71 = call i32 @RETURN(i32 %70, i32 -2)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.connection*, %struct.connection** %9, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 0
  %75 = load i64*, i64** @buf, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @safe_read_in(i32* %74, i64* %75, i32 %76)
  %78 = load i64*, i64** @buf, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %19, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i64*, i64** @buf, align 8
  %86 = call i32 @add_letter_priority(i64 %82, i32 %83, i32 %84, i64* %85)
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* @set, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @RETURN(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %72, %46, %40
  %91 = load i32, i32* %17, align 4
  %92 = icmp sge i32 %91, 6
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %93
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 6
  %100 = call i32 (i8*, i8*, ...) @sscanf(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %22, i32* %23, i64* %24)
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %23, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* @MAX_DELAY, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %102, %97
  %110 = load i32, i32* @set, align 4
  %111 = call i32 @RETURN(i32 %110, i32 -2)
  br label %112

112:                                              ; preds = %109, %105
  %113 = load %struct.connection*, %struct.connection** %9, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 0
  %115 = load i64*, i64** @buf, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @safe_read_in(i32* %114, i64* %115, i32 %116)
  %118 = load i64*, i64** @buf, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %23, align 4
  %123 = load i64, i64* %24, align 8
  %124 = load i64*, i64** @buf, align 8
  %125 = call i32 @add_letter(i32 %122, i64 %123, i64* %124)
  store i32 %125, i32* %25, align 4
  %126 = load i32, i32* @set, align 4
  %127 = load i32, i32* %25, align 4
  %128 = call i32 @RETURN(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %112, %93, %90
  br label %130

130:                                              ; preds = %129, %35
  %131 = load i32, i32* @set, align 4
  %132 = call i32 @RETURN(i32 %131, i32 -2)
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @safe_read_in(i32*, i64*, i32) #1

declare dso_local i32 @add_letter_priority(i64, i32, i32, i64*) #1

declare dso_local i32 @add_letter(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
