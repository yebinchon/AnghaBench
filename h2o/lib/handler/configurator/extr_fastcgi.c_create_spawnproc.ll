; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_create_spawnproc.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_create_spawnproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.passwd = type { i32, i32 }

@__const.create_spawnproc.pipe_fds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s/_\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unix socket path too long: %s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"socket(2) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"bind(2) failed: %s\00", align 1
@H2O_SOMAXCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"listen(2) failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"chown(2) failed to change ownership of socket:%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"pipe(2) failed: %s\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"[lib/handler/fastcgi.c] failed to launch helper program %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8**, %struct.sockaddr_un*, %struct.passwd*)* @create_spawnproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_spawnproc(i32* %0, i32* %1, i8* %2, i8** %3, %struct.sockaddr_un* %4, %struct.passwd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.sockaddr_un*, align 8
  %13 = alloca %struct.passwd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.sockaddr_un* %4, %struct.sockaddr_un** %12, align 8
  store %struct.passwd* %5, %struct.passwd** %13, align 8
  store i32 -1, i32* %15, align 4
  %19 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.create_spawnproc.pipe_fds to i8*), i64 8, i1 false)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %6
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %35, i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %152

39:                                               ; preds = %30
  %40 = load i32, i32* @AF_UNIX, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = call i32 @socket(i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %15, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %45, i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %152

50:                                               ; preds = %39
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %53 = bitcast %struct.sockaddr_un* %52 to i8*
  %54 = call i64 @bind(i32 %51, i8* %53, i32 8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i8* @strerror(i32 %59)
  %61 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %57, i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %152

62:                                               ; preds = %50
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @H2O_SOMAXCONN, align 4
  %65 = call i64 @listen(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i8* @strerror(i32 %70)
  %72 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %68, i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %152

73:                                               ; preds = %62
  %74 = load %struct.passwd*, %struct.passwd** %13, align 8
  %75 = icmp ne %struct.passwd* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %78 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.passwd*, %struct.passwd** %13, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.passwd*, %struct.passwd** %13, align 8
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @chown(i32 %79, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %76
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %92 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* @errno, align 4
  %97 = call i8* @strerror(i32 %96)
  %98 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %89, i32* %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %95, i8* %97)
  br label %152

99:                                               ; preds = %76, %73
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %101 = call i64 @pipe(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* @errno, align 4
  %107 = call i8* @strerror(i32 %106)
  %108 = call i32 (i32*, i32*, i8*, i8*, ...) @h2o_configurator_errprintf(i32* %104, i32* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 -1, i32* %109, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 -1, i32* %110, align 4
  br label %152

111:                                              ; preds = %99
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @F_SETFD, align 4
  %115 = load i32, i32* @FD_CLOEXEC, align 4
  %116 = call i64 @fcntl(i32 %113, i32 %114, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %152

119:                                              ; preds = %111
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %123, align 4
  %126 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 5, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 -1, i32* %127, align 4
  %128 = load i8**, i8*** %11, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8**, i8*** %11, align 8
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %133 = call i32 @h2o_spawnp(i8* %130, i8** %131, i32* %132, i32 0)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %143

136:                                              ; preds = %119
  %137 = load i8**, i8*** %11, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @errno, align 4
  %141 = call i8* @strerror(i32 %140)
  %142 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %139, i8* %141)
  br label %152

143:                                              ; preds = %119
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @close(i32 %144)
  store i32 -1, i32* %15, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @close(i32 %147)
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 -1, i32* %149, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %7, align 4
  br label %179

152:                                              ; preds = %136, %118, %103, %88, %67, %56, %44, %34
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @close(i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @close(i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @close(i32 %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.sockaddr_un*, %struct.sockaddr_un** %12, align 8
  %176 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @unlink(i32 %177)
  store i32 -1, i32* %7, align 4
  br label %179

179:                                              ; preds = %174, %143
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @h2o_configurator_errprintf(i32*, i32*, i8*, i8*, ...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i64 @chown(i32, i32, i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i64 @fcntl(i32, i32, i32) #2

declare dso_local i32 @h2o_spawnp(i8*, i8**, i32*, i32) #2

declare dso_local i32 @h2o_error_printf(i8*, i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
