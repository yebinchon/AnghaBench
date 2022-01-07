; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_accept.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.fd*, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"accept(%d, 0x%x, 0x%x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@AF_LOCAL_ = common dso_local global i64 0, align 8
@peer_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_accept(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.fd*, align 8
  %17 = alloca %struct.fd*, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @STRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.fd* @sock_getfd(i64 %23)
  store %struct.fd* %24, %struct.fd** %8, align 8
  %25 = load %struct.fd*, %struct.fd** %8, align 8
  %26 = icmp eq %struct.fd* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @_EBADF, align 4
  store i32 %28, i32* %4, align 4
  br label %159

29:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @user_get(i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @_EFAULT, align 4
  store i32 %38, i32* %4, align 4
  br label %159

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %10, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  br label %45

45:                                               ; preds = %73, %40
  %46 = load %struct.fd*, %struct.fd** %8, align 8
  %47 = call i32 @sockrestart_begin_listen_wait(%struct.fd* %46)
  store i64 0, i64* @errno, align 8
  %48 = load %struct.fd*, %struct.fd** %8, align 8
  %49 = getelementptr inbounds %struct.fd, %struct.fd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %53
  %56 = phi i8* [ %44, %53 ], [ null, %54 ]
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i32* [ %9, %59 ], [ null, %60 ]
  %63 = call i32 @accept(i32 %50, i8* %56, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.fd*, %struct.fd** %8, align 8
  %65 = call i32 @sockrestart_end_listen_wait(%struct.fd* %64)
  br label %66

66:                                               ; preds = %61
  %67 = call i64 (...) @sockrestart_should_restart_listen_wait()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EINTR, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %45, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (...) @errno_map()
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %157

80:                                               ; preds = %75
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %42 to i32
  %86 = call i32 @sockaddr_write(i64 %84, i8* %44, i32 %85, i32* %9)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %157

91:                                               ; preds = %83
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @user_put(i64 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @_EFAULT, align 4
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %157

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.fd*, %struct.fd** %8, align 8
  %102 = getelementptr inbounds %struct.fd, %struct.fd* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fd*, %struct.fd** %8, align 8
  %106 = getelementptr inbounds %struct.fd, %struct.fd* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.fd*, %struct.fd** %8, align 8
  %110 = getelementptr inbounds %struct.fd, %struct.fd* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @sock_fd_create(i32 %100, i64 %104, i32 %108, i32 %112)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %15, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %99
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @close(i32 %117)
  br label %119

119:                                              ; preds = %116, %99
  %120 = load %struct.fd*, %struct.fd** %8, align 8
  %121 = getelementptr inbounds %struct.fd, %struct.fd* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AF_LOCAL_, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %119
  %127 = call i32 @lock(i32* @peer_lock)
  %128 = load i64, i64* %15, align 8
  %129 = call %struct.fd* @f_get(i64 %128)
  store %struct.fd* %129, %struct.fd** %16, align 8
  %130 = load %struct.fd*, %struct.fd** %16, align 8
  %131 = getelementptr inbounds %struct.fd, %struct.fd* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = call i32 @fill_cred(i32* %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @read(i32 %134, %struct.fd** %17, i32 8)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %137, 8
  br i1 %138, label %139, label %152

139:                                              ; preds = %126
  %140 = load %struct.fd*, %struct.fd** %17, align 8
  %141 = load %struct.fd*, %struct.fd** %16, align 8
  %142 = getelementptr inbounds %struct.fd, %struct.fd* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store %struct.fd* %140, %struct.fd** %143, align 8
  %144 = load %struct.fd*, %struct.fd** %16, align 8
  %145 = load %struct.fd*, %struct.fd** %17, align 8
  %146 = getelementptr inbounds %struct.fd, %struct.fd* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store %struct.fd* %144, %struct.fd** %147, align 8
  %148 = load %struct.fd*, %struct.fd** %17, align 8
  %149 = getelementptr inbounds %struct.fd, %struct.fd* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = call i32 @notify(i32* %150)
  br label %152

152:                                              ; preds = %139, %126
  %153 = call i32 @unlock(i32* @peer_lock)
  br label %154

154:                                              ; preds = %152, %119
  %155 = load i64, i64* %15, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %154, %96, %89, %78
  %158 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %158)
  br label %159

159:                                              ; preds = %157, %37, %27
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @STRACE(i8*, i64, i64, i64) #1

declare dso_local %struct.fd* @sock_getfd(i64) #1

declare dso_local i64 @user_get(i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sockrestart_begin_listen_wait(%struct.fd*) #1

declare dso_local i32 @accept(i32, i8*, i32*) #1

declare dso_local i32 @sockrestart_end_listen_wait(%struct.fd*) #1

declare dso_local i64 @sockrestart_should_restart_listen_wait(...) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @sockaddr_write(i64, i8*, i32, i32*) #1

declare dso_local i64 @user_put(i64, i32) #1

declare dso_local i64 @sock_fd_create(i32, i64, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.fd* @f_get(i64) #1

declare dso_local i32 @fill_cred(i32*) #1

declare dso_local i32 @read(i32, %struct.fd**, i32) #1

declare dso_local i32 @notify(i32*) #1

declare dso_local i32 @unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
