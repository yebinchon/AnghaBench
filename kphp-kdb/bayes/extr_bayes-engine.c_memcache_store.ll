; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, \0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"current_text\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"current_text%d\00", align 1
@set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"current_text %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"add_black_list\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"add_black_list %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"delete_black_list\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"delete_black_list %s\0A\00", align 1

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
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @INIT, align 4
  %22 = load i32, i32* @verbosity, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %7
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @MAX_VALUE_LEN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @eat_at(i8* %36, i32 %37, i8** %16, i32* %17)
  %39 = load i32, i32* %17, align 4
  %40 = icmp sge i32 %39, 12
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load i8*, i8** %16, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @set, align 4
  %51 = call i32 @RETURN(i32 %50, i32 -2)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @verbosity, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.connection*, %struct.connection** %9, align 8
  %61 = call i32 @BYS_MSG(%struct.connection* %60)
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i64 @msg_reinit(i32 %61, i32 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @set, align 4
  %68 = call i32 @RETURN(i32 %67, i32 -2)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.connection*, %struct.connection** %9, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 0
  %72 = load %struct.connection*, %struct.connection** %9, align 8
  %73 = call i32 @BYS_MSG(%struct.connection* %72)
  %74 = call i8* @msg_get_buf(i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @safe_read_in(i32* %71, i8* %74, i32 %75)
  %77 = load i32, i32* @set, align 4
  %78 = call i32 @RETURN(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %69, %41, %35
  %80 = load i32, i32* %17, align 4
  %81 = icmp sge i32 %80, 14
  br i1 %81, label %82, label %108

82:                                               ; preds = %79
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @strncmp(i8* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %82
  %87 = load %struct.connection*, %struct.connection** %9, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 0
  %89 = load i8*, i8** @buf, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @safe_read_in(i32* %88, i8* %89, i32 %90)
  %92 = load i8*, i8** @buf, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* @verbosity, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** @buf, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %86
  %103 = load i8*, i8** @buf, align 8
  %104 = call i32 @do_black_list_add(i8* %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* @set, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @RETURN(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %82, %79
  %109 = load i32, i32* %17, align 4
  %110 = icmp sge i32 %109, 17
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @strncmp(i8* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 17)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %111
  %116 = load %struct.connection*, %struct.connection** %9, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 0
  %118 = load i8*, i8** @buf, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @safe_read_in(i32* %117, i8* %118, i32 %119)
  %121 = load i8*, i8** @buf, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i32, i32* @verbosity, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** @buf, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %115
  %132 = load i8*, i8** @buf, align 8
  %133 = call i32 @do_black_list_delete(i8* %132)
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* @set, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @RETURN(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %111, %108
  br label %138

138:                                              ; preds = %137, %30
  %139 = load i32, i32* @set, align 4
  %140 = call i32 @RETURN(i32 %139, i32 -2)
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i64 @msg_reinit(i32, i32, i32) #1

declare dso_local i32 @BYS_MSG(%struct.connection*) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i8* @msg_get_buf(i32) #1

declare dso_local i32 @do_black_list_add(i8*) #1

declare dso_local i32 @do_black_list_delete(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
