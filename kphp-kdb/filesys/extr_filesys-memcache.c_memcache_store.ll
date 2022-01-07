; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.fuse_file_info = type { i32 }

@cmd_set = common dso_local global i32 0, align 4
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@mct_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chmod%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"chown%d,%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mkdir%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"write%u,%lld\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@value_buff = common dso_local global i32* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"store: fail (act = %d, res = %d)\0A\00", align 1

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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fuse_file_info, align 4
  %22 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* @cmd_set, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @cmd_set, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @MAX_VALUE_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %170

28:                                               ; preds = %7
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %170

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @mct_set, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %170

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %92 [
    i32 99, label %39
    i32 109, label %58
    i32 112, label %68
    i32 114, label %74
    i32 119, label %80
    i32 117, label %86
  ]

39:                                               ; preds = %35
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 (i8*, i8*, ...) @sscanf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 6, i32* %18, align 4
  br label %48

48:                                               ; preds = %47, %43, %39
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 (i8*, i8*, ...) @sscanf(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %19, i32* %20)
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 7, i32* %18, align 4
  br label %57

57:                                               ; preds = %56, %52, %48
  br label %92

58:                                               ; preds = %35
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 (i8*, i8*, ...) @sscanf(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %19)
  %65 = icmp sge i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %18, align 4
  br label %67

67:                                               ; preds = %66, %62, %58
  br label %92

68:                                               ; preds = %35
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 3, i32* %18, align 4
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %35, %73
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 4, i32* %18, align 4
  br label %79

79:                                               ; preds = %78, %74
  br label %80

80:                                               ; preds = %35, %79
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (i8*, i8*, ...) @sscanf(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %17, i32* %16)
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 2, i32* %18, align 4
  br label %85

85:                                               ; preds = %84, %80
  br label %92

86:                                               ; preds = %35
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 5, i32* %18, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %35, %85, %67, %57
  store i32 -11, i32* %22, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %169

95:                                               ; preds = %92
  %96 = load %struct.connection*, %struct.connection** %9, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 1
  %98 = load i32*, i32** @value_buff, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @read_in(i32* %97, i32* %98, i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32*, i32** @value_buff, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %18, align 4
  switch i32 %109, label %153 [
    i32 1, label %110
    i32 2, label %114
    i32 3, label %125
    i32 4, label %138
    i32 5, label %141
    i32 6, label %144
    i32 7, label %148
  ]

110:                                              ; preds = %95
  %111 = load i32*, i32** @value_buff, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @ff_mkdir(i32* %111, i32 %112)
  store i32 %113, i32* %22, align 4
  br label %153

114:                                              ; preds = %95
  %115 = load i32, i32* %16, align 4
  %116 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %21, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** @value_buff, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @ff_write(i32* null, i32* %117, i32 %118, i32 %119, %struct.fuse_file_info* %21)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 0, i32* %22, align 4
  br label %124

124:                                              ; preds = %123, %114
  br label %153

125:                                              ; preds = %95
  %126 = load %struct.connection*, %struct.connection** %9, align 8
  %127 = call i32 @init_tmp_buffers(%struct.connection* %126)
  %128 = load %struct.connection*, %struct.connection** %9, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write_out(i32 %130, i32* %15, i32 4)
  %132 = load %struct.connection*, %struct.connection** %9, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @value_buff, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @write_out(i32 %134, i32* %135, i32 %136)
  store i32 0, i32* %22, align 4
  br label %153

138:                                              ; preds = %95
  %139 = load i32*, i32** @value_buff, align 8
  %140 = call i32 @ff_rmdir(i32* %139)
  store i32 %140, i32* %22, align 4
  br label %153

141:                                              ; preds = %95
  %142 = load i32*, i32** @value_buff, align 8
  %143 = call i32 @ff_unlink(i32* %142)
  store i32 %143, i32* %22, align 4
  br label %153

144:                                              ; preds = %95
  %145 = load i32*, i32** @value_buff, align 8
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @ff_chmod(i32* %145, i32 %146)
  store i32 %147, i32* %22, align 4
  br label %153

148:                                              ; preds = %95
  %149 = load i32*, i32** @value_buff, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @ff_chown(i32* %149, i32 %150, i32 %151)
  store i32 %152, i32* %22, align 4
  br label %153

153:                                              ; preds = %95, %148, %144, %141, %138, %125, %124, %110
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  store i32 1, i32* %8, align 4
  br label %171

157:                                              ; preds = %153
  %158 = load i64, i64* @verbosity, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* %22, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* @stderr, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @fprintf(i32 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %160, %157
  store i32 0, i32* %8, align 4
  br label %171

169:                                              ; preds = %92
  br label %170

170:                                              ; preds = %169, %31, %28, %7
  store i32 -2, i32* %8, align 4
  br label %171

171:                                              ; preds = %170, %168, %156
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local i32 @ff_mkdir(i32*, i32) #1

declare dso_local i32 @ff_write(i32*, i32*, i32, i32, %struct.fuse_file_info*) #1

declare dso_local i32 @init_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @write_out(i32, i32*, i32) #1

declare dso_local i32 @ff_rmdir(i32*) #1

declare dso_local i32 @ff_unlink(i32*) #1

declare dso_local i32 @ff_chmod(i32*, i32) #1

declare dso_local i32 @ff_chown(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
