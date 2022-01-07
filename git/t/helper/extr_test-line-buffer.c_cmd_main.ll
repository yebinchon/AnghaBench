; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-line-buffer.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-line-buffer.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@LINE_BUFFER_INIT = common dso_local global %struct.line_buffer zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"test-line-buffer [file | &fd] < script\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"open error\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"error opening fd %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"error reading from %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"input error\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"output error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.line_buffer, align 4
  %6 = alloca %struct.line_buffer, align 4
  %7 = alloca %struct.line_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = bitcast %struct.line_buffer* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.line_buffer* @LINE_BUFFER_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.line_buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.line_buffer* @LINE_BUFFER_INIT to i8*), i64 4, i1 false)
  store %struct.line_buffer* %5, %struct.line_buffer** %7, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  br label %24

22:                                               ; preds = %15
  %23 = call i32 @usage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %14
  %26 = call i64 @buffer_init(%struct.line_buffer* %5, i8* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 38
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @strtouint32(i8* %40)
  %42 = call i64 @buffer_fdinit(%struct.line_buffer* %6, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %57

49:                                               ; preds = %33
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @buffer_init(%struct.line_buffer* %6, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %48
  store %struct.line_buffer* %6, %struct.line_buffer** %7, align 8
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %62, %58
  %60 = call i8* @buffer_read_line(%struct.line_buffer* %5)
  store i8* %60, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.line_buffer*, %struct.line_buffer** %7, align 8
  %65 = call i32 @handle_line(i8* %63, %struct.line_buffer* %64)
  br label %59

66:                                               ; preds = %59
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = call i64 @buffer_deinit(%struct.line_buffer* %6)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69, %66
  %76 = call i64 @buffer_deinit(%struct.line_buffer* %5)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* @stdout, align 4
  %82 = call i64 @ferror(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @buffer_init(%struct.line_buffer*, i8*) #2

declare dso_local i32 @die_errno(i8*, ...) #2

declare dso_local i64 @buffer_fdinit(%struct.line_buffer*, i32) #2

declare dso_local i32 @strtouint32(i8*) #2

declare dso_local i8* @buffer_read_line(%struct.line_buffer*) #2

declare dso_local i32 @handle_line(i8*, %struct.line_buffer*) #2

declare dso_local i64 @buffer_deinit(%struct.line_buffer*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i64 @ferror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
