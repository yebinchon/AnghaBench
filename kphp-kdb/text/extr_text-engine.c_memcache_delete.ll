; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memcache_delete: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"userdata%d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"message%d_%d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"first_messages%d_%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"secret%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.connection*, %struct.connection** %5, align 8
  %18 = call i32 @free_tmp_buffers(%struct.connection* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 8
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @unload_user_metafile(i32 %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = call i32 @write_out(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %108

37:                                               ; preds = %29
  %38 = load %struct.connection*, %struct.connection** %5, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = call i32 @write_out(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %108

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %21, %16
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32* %9)
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @do_delete_message(i32 %53, i32 %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.connection*, %struct.connection** %5, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = call i32 @write_out(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %108

61:                                               ; preds = %52
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 0
  %64 = call i32 @write_out(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %108

65:                                               ; preds = %49, %46, %42
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32* %9)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @do_delete_first_messages(i32 %76, i32 %77)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 0
  %83 = call i32 @write_out(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %108

84:                                               ; preds = %75
  %85 = load %struct.connection*, %struct.connection** %5, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 0
  %87 = call i32 @write_out(i32* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %108

88:                                               ; preds = %72, %69, %65
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %8)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @set_user_secret(i32 %96, i32 0)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.connection*, %struct.connection** %5, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 0
  %102 = call i32 @write_out(i32* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %108

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %92, %88
  %105 = load %struct.connection*, %struct.connection** %5, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 0
  %107 = call i32 @write_out(i32* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %99, %84, %80, %61, %57, %37, %33
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @unload_user_metafile(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @do_delete_message(i32, i32) #1

declare dso_local i32 @do_delete_first_messages(i32, i32) #1

declare dso_local i32 @set_user_secret(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
