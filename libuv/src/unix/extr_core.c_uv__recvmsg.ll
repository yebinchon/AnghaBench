; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__recvmsg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64 }
%struct.cmsghdr = type { i64, i32 }

@uv__recvmsg.no_msg_cmsg_cloexec = internal global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SCM_RIGHTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__recvmsg(i32 %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @uv__recvmsg.no_msg_cmsg_cloexec, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, 1073741824
  %19 = call i32 @recvmsg(i32 %15, %struct.msghdr* %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %103

24:                                               ; preds = %14
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 @UV__ERR(i64 %29)
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @recvmsg(i32 %32, %struct.msghdr* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @errno, align 8
  %40 = call i32 @UV__ERR(i64 %39)
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %31
  store i32 1, i32* @uv__recvmsg.no_msg_cmsg_cloexec, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @recvmsg(i32 %43, %struct.msghdr* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* @errno, align 8
  %52 = call i32 @UV__ERR(i64 %51)
  store i32 %52, i32* %4, align 4
  br label %103

53:                                               ; preds = %47
  %54 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %103

60:                                               ; preds = %53
  %61 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %62 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %61)
  store %struct.cmsghdr* %62, %struct.cmsghdr** %8, align 8
  br label %63

63:                                               ; preds = %97, %60
  %64 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %65 = icmp ne %struct.cmsghdr* %64, null
  br i1 %65, label %66, label %101

66:                                               ; preds = %63
  %67 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %68 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SCM_RIGHTS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %66
  %73 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %74 = call i64 @CMSG_DATA(%struct.cmsghdr* %73)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %10, align 8
  %76 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %77 = bitcast %struct.cmsghdr* %76 to i8*
  %78 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %79 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %11, align 8
  br label %84

84:                                               ; preds = %92, %72
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = icmp ult i32* %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @uv__cloexec(i32 %90, i32 1)
  br label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32* %94, i32** %10, align 8
  br label %84

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %99 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %100 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %98, %struct.cmsghdr* %99)
  store %struct.cmsghdr* %100, %struct.cmsghdr** %8, align 8
  br label %63

101:                                              ; preds = %63
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %58, %50, %38, %28, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
