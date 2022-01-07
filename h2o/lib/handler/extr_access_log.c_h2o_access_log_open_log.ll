; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_access_log.c_h2o_access_log_open_log.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_access_log.c_h2o_access_log_open_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pipe failed\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set FD_CLOEXEC on pipefds[1]\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to open logger: %s:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"path:%s is too long as a unix socket name\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to create socket for log file:%s:%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"failed to connect socket for log file:%s:%s\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to open log file:%s:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_access_log_open_log(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8*], align 16
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 124
  br i1 %16, label %17, label %62

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %20, align 8
  %23 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = call i64 @pipe(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @h2o_perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %132

29:                                               ; preds = %17
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @F_SETFD, align 4
  %33 = load i32, i32* @FD_CLOEXEC, align 4
  %34 = call i32 @fcntl(i32 %31, i32 %32, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @h2o_perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %132

38:                                               ; preds = %29
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 -1, i32* %43, align 4
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %48 = call i32 @h2o_spawnp(i8* %45, i8** %46, i32* %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 (i8*, i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %54)
  store i32 -1, i32* %2, align 4
  br label %132

56:                                               ; preds = %38
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  br label %130

62:                                               ; preds = %1
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @stat(i8* %63, %struct.stat* %9)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @S_IFMT, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @S_IFSOCK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %67
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %77, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i8*, i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  store i32 -1, i32* %2, align 4
  br label %132

82:                                               ; preds = %74
  %83 = load i32, i32* @AF_UNIX, align 4
  %84 = load i32, i32* @SOCK_STREAM, align 4
  %85 = call i32 @socket(i32 %83, i32 %84, i32 0)
  store i32 %85, i32* %4, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @strerror(i32 %89)
  %91 = call i32 (i8*, i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %88, i32 %90)
  store i32 -1, i32* %2, align 4
  br label %132

92:                                               ; preds = %82
  %93 = call i32 @memset(%struct.sockaddr_un* %11, i32 0, i32 8)
  %94 = load i32, i32* @AF_UNIX, align 4
  %95 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @strcpy(i32 %97, i8* %98)
  %100 = load i32, i32* %4, align 4
  %101 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %102 = call i32 @connect(i32 %100, %struct.sockaddr* %101, i32 8)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 @strerror(i32 %106)
  %108 = call i32 (i8*, i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %105, i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @close(i32 %109)
  store i32 -1, i32* %2, align 4
  br label %132

111:                                              ; preds = %92
  br label %129

112:                                              ; preds = %67, %62
  %113 = load i8*, i8** %3, align 8
  %114 = load i32, i32* @O_CREAT, align 4
  %115 = load i32, i32* @O_WRONLY, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @O_APPEND, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @O_CLOEXEC, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @open(i8* %113, i32 %120, i32 420)
  store i32 %121, i32* %4, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load i8*, i8** %3, align 8
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @strerror(i32 %125)
  %127 = call i32 (i8*, i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %124, i32 %126)
  store i32 -1, i32* %2, align 4
  br label %132

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129, %56
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %123, %104, %87, %79, %50, %36, %27
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @h2o_perror(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @h2o_spawnp(i8*, i8**, i32*, i32) #1

declare dso_local i32 @h2o_error_printf(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
