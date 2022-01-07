; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_socketpair.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fd* }

@.str = private unnamed_addr constant [29 x i8] c"socketpair(%d, %d, %d, 0x%x)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@peer_lock = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" [%d, %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_socketpair(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.fd*, align 8
  %16 = alloca %struct.fd*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i8*, i32, i32, ...) @STRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sock_family_to_real(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @_EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %117

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sock_type_to_real(i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @_EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %117

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %41 = call i32 @socketpair(i32 %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @errno_map()
  store i32 %45, i32* %5, align 4
  br label %117

46:                                               ; preds = %36
  %47 = call i32 @lock(i32* @peer_lock)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @sock_fd_create(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  store i32 %53, i32* %13, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = call i32 @unlock(i32* @peer_lock)
  br label %109

60:                                               ; preds = %46
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @sock_fd_create(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  store i32 %66, i32* %13, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = call i32 @unlock(i32* @peer_lock)
  br label %105

73:                                               ; preds = %60
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.fd* @f_get(i32 %75)
  store %struct.fd* %76, %struct.fd** %15, align 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.fd* @f_get(i32 %78)
  store %struct.fd* %79, %struct.fd** %16, align 8
  %80 = load %struct.fd*, %struct.fd** %16, align 8
  %81 = load %struct.fd*, %struct.fd** %15, align 8
  %82 = getelementptr inbounds %struct.fd, %struct.fd* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store %struct.fd* %80, %struct.fd** %83, align 8
  %84 = load %struct.fd*, %struct.fd** %15, align 8
  %85 = load %struct.fd*, %struct.fd** %16, align 8
  %86 = getelementptr inbounds %struct.fd, %struct.fd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.fd* %84, %struct.fd** %87, align 8
  %88 = call i32 @unlock(i32* @peer_lock)
  %89 = load i32, i32* @_EFAULT, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %9, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %92 = call i64 @user_put(i32 %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %73
  br label %101

95:                                               ; preds = %73
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, i32, ...) @STRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %99)
  store i32 0, i32* %5, align 4
  br label %117

101:                                              ; preds = %94
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sys_close(i32 %103)
  br label %105

105:                                              ; preds = %101, %71
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sys_close(i32 %107)
  br label %109

109:                                              ; preds = %105, %58
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %109, %95, %44, %34, %26
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @STRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @sock_family_to_real(i32) #1

declare dso_local i32 @sock_type_to_real(i32, i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @sock_fd_create(i32, i32, i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i64 @user_put(i32, i32*) #1

declare dso_local i32 @sys_close(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
