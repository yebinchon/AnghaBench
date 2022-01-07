; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_setup_named_sock.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_setup_named_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socketlist = type { i32*, i64, i32 }
%struct.addrinfo = type { i64, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"getaddrinfo() for %s failed: %s\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Socket descriptor too large\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not set SO_REUSEADDR: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not bind to %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not listen to %s: %s\00", align 1
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.socketlist*)* @setup_named_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_named_sock(i8* %0, i32 %1, %struct.socketlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socketlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.socketlist* %2, %struct.socketlist** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @NI_MAXSERV, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = trunc i64 %19 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @xsnprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %26 = load i64, i64* @AF_UNSPEC, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IPPROTO_TCP, align 4
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @AI_PASSIVE, align 4
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @getaddrinfo(i8* %34, i8* %21, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @gai_strerror(i32 %40)
  %42 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %41)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %172

43:                                               ; preds = %3
  %44 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %44, %struct.addrinfo** %13, align 8
  br label %45

45:                                               ; preds = %164, %43
  %46 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %47 = icmp ne %struct.addrinfo* %46, null
  br i1 %47, label %48, label %168

48:                                               ; preds = %45
  %49 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @socket(i64 %51, i32 %54, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %164

62:                                               ; preds = %48
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @FD_SETSIZE, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @close(i32 %68)
  br label %164

70:                                               ; preds = %62
  %71 = load i32, i32* %17, align 4
  %72 = call i64 @set_reuse_addr(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @close(i32 %78)
  br label %164

80:                                               ; preds = %70
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @set_keep_alive(i32 %81)
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @bind(i32 %83, i32 %86, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @ip2str(i64 %95, i32 %98, i32 %101)
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 @strerror(i32 %103)
  %105 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %102, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @close(i32 %106)
  br label %164

108:                                              ; preds = %80
  %109 = load i32, i32* %17, align 4
  %110 = call i64 @listen(i32 %109, i32 5)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %120 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @ip2str(i64 %115, i32 %118, i32 %121)
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @strerror(i32 %123)
  %125 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @close(i32 %126)
  br label %164

128:                                              ; preds = %108
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @F_GETFD, align 4
  %131 = call i64 @fcntl(i32 %129, i32 %130, i64 0)
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %15, align 8
  %133 = icmp sge i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @F_SETFD, align 4
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* @FD_CLOEXEC, align 8
  %139 = or i64 %137, %138
  %140 = call i64 @fcntl(i32 %135, i32 %136, i64 %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load %struct.socketlist*, %struct.socketlist** %7, align 8
  %143 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.socketlist*, %struct.socketlist** %7, align 8
  %146 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  %149 = load %struct.socketlist*, %struct.socketlist** %7, align 8
  %150 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ALLOC_GROW(i32* %144, i64 %148, i32 %151)
  %153 = load i32, i32* %17, align 4
  %154 = load %struct.socketlist*, %struct.socketlist** %7, align 8
  %155 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.socketlist*, %struct.socketlist** %7, align 8
  %158 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %153, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %141, %112, %92, %74, %66, %61
  %165 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %166 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i32 0, i32 5
  %167 = load %struct.addrinfo*, %struct.addrinfo** %166, align 8
  store %struct.addrinfo* %167, %struct.addrinfo** %13, align 8
  br label %45

168:                                              ; preds = %45
  %169 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %170 = call i32 @freeaddrinfo(%struct.addrinfo* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %172

172:                                              ; preds = %168, %38
  %173 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @logerror(i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @socket(i64, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @set_reuse_addr(i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @set_keep_alive(i32) #2

declare dso_local i64 @bind(i32, i32, i32) #2

declare dso_local i8* @ip2str(i64, i32, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i64 @fcntl(i32, i32, i64) #2

declare dso_local i32 @ALLOC_GROW(i32*, i64, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
