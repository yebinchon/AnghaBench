; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__stream_recv_cmsg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__stream_recv_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i32 }

@SCM_RIGHTS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ignoring non-SCM_RIGHTS ancillary data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.msghdr*)* @uv__stream_recv_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__stream_recv_cmsg(%struct.TYPE_4__* %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %15 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %14)
  store %struct.cmsghdr* %15, %struct.cmsghdr** %6, align 8
  br label %16

16:                                               ; preds = %122, %2
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %18 = icmp ne %struct.cmsghdr* %17, null
  br i1 %18, label %19, label %126

19:                                               ; preds = %16
  %20 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %21 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCM_RIGHTS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %28 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %122

31:                                               ; preds = %19
  %32 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %33 = call i8* @CMSG_DATA(%struct.cmsghdr* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %37 = bitcast %struct.cmsghdr* %36 to i8*
  store i8* %37, i8** %7, align 8
  %38 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %39 = bitcast %struct.cmsghdr* %38 to i8*
  %40 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %41 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %56, %31
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @CMSG_LEN(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %46, i64 %52
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32 @CMSG_LEN(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %60, i64 %66
  %68 = load i8*, i8** %8, align 8
  %69 = icmp eq i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %118, %59
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @uv__stream_queue_fd(%struct.TYPE_4__* %82, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @uv__close(i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %127

108:                                              ; preds = %81
  br label %117

109:                                              ; preds = %76
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %108
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %72

121:                                              ; preds = %72
  br label %122

122:                                              ; preds = %121, %25
  %123 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %124 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %125 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %123, %struct.cmsghdr* %124)
  store %struct.cmsghdr* %125, %struct.cmsghdr** %6, align 8
  br label %16

126:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i8* @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__stream_queue_fd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
