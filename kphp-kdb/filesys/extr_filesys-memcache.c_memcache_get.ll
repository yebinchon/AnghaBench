; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.fuse_file_info = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@value_buff = common dso_local global i32 0, align 4
@cmd_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"creat%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"read%u,%u,%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_file_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @verbosity, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 5
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = call i32 @filesys_prepare_stats(%struct.connection* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.connection*, %struct.connection** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @value_buff, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @return_one_key(%struct.connection* %31, i8* %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %122

36:                                               ; preds = %24, %21
  %37 = load i32, i32* @cmd_get, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @cmd_get, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %122

42:                                               ; preds = %36
  store i32 -11, i32* %10, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %119 [
    i32 99, label %47
    i32 111, label %73
    i32 114, label %94
  ]

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i8*, i8*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = call i32 @parse_path(%struct.connection* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @value_buff, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ff_create(i32 %60, i32 %61, %struct.fuse_file_info* %8)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.connection*, %struct.connection** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @return_one_long(%struct.connection* %66, i8* %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %71, %55, %51, %47
  br label %119

73:                                               ; preds = %42
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = load %struct.connection*, %struct.connection** %5, align 8
  %79 = call i32 @parse_path(%struct.connection* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @value_buff, align 4
  %83 = call i32 @ff_open(i32 %82, %struct.fuse_file_info* %8)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.connection*, %struct.connection** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @return_one_long(%struct.connection* %87, i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %77, %73
  br label %119

94:                                               ; preds = %42
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strncmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i8*, i8*, ...) @sscanf(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %12, i32* %13, i32* %14)
  %101 = icmp sge i32 %100, 3
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %8, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @value_buff, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @ff_read(i32* null, i32 %105, i32 %106, i32 %107, %struct.fuse_file_info* %8)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load %struct.connection*, %struct.connection** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* @value_buff, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @return_one_key(%struct.connection* %112, i8* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %102
  br label %118

118:                                              ; preds = %117, %98, %94
  br label %119

119:                                              ; preds = %118, %42, %93, %72
  %120 = load %struct.connection*, %struct.connection** %5, align 8
  %121 = call i32 @free_tmp_buffers(%struct.connection* %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %41, %28
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @filesys_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @parse_path(%struct.connection*) #1

declare dso_local i32 @ff_create(i32, i32, %struct.fuse_file_info*) #1

declare dso_local i32 @return_one_long(%struct.connection*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ff_open(i32, %struct.fuse_file_info*) #1

declare dso_local i32 @ff_read(i32*, i32, i32, i32, %struct.fuse_file_info*) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
