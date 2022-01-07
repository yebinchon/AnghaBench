; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_translate_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32, %struct.binder_proc* }
%struct.binder_proc = type { i32, i32 }
%struct.binder_transaction = type { i32, i32, %struct.TYPE_4__*, %struct.binder_proc* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.binder_txn_fd_fixup = type { i32, i32, %struct.file* }
%struct.file = type { i32 }

@TF_ACCEPT_FDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%d:%d got %s with fd, %d, but target does not allow fds\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%d:%d got transaction with invalid fd, %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.binder_transaction*, %struct.binder_thread*, %struct.binder_transaction*)* @binder_translate_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_translate_fd(i32 %0, i32 %1, %struct.binder_transaction* %2, %struct.binder_thread* %3, %struct.binder_transaction* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.binder_transaction*, align 8
  %10 = alloca %struct.binder_thread*, align 8
  %11 = alloca %struct.binder_transaction*, align 8
  %12 = alloca %struct.binder_proc*, align 8
  %13 = alloca %struct.binder_proc*, align 8
  %14 = alloca %struct.binder_txn_fd_fixup*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.binder_transaction* %2, %struct.binder_transaction** %9, align 8
  store %struct.binder_thread* %3, %struct.binder_thread** %10, align 8
  store %struct.binder_transaction* %4, %struct.binder_transaction** %11, align 8
  %18 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %19 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %18, i32 0, i32 1
  %20 = load %struct.binder_proc*, %struct.binder_proc** %19, align 8
  store %struct.binder_proc* %20, %struct.binder_proc** %12, align 8
  %21 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %22 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %21, i32 0, i32 3
  %23 = load %struct.binder_proc*, %struct.binder_proc** %22, align 8
  store %struct.binder_proc* %23, %struct.binder_proc** %13, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.binder_transaction*, %struct.binder_transaction** %11, align 8
  %25 = icmp ne %struct.binder_transaction* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.binder_transaction*, %struct.binder_transaction** %11, align 8
  %28 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TF_ACCEPT_FDS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %17, align 4
  br label %44

36:                                               ; preds = %5
  %37 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %38 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %36, %26
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load %struct.binder_proc*, %struct.binder_proc** %12, align 8
  %49 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %52 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.binder_transaction*, %struct.binder_transaction** %11, align 8
  %55 = icmp ne %struct.binder_transaction* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i32, i32, i8*, ...) @binder_user_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i8* %57, i32 %58)
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  br label %126

62:                                               ; preds = %44
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.file* @fget(i32 %63)
  store %struct.file* %64, %struct.file** %15, align 8
  %65 = load %struct.file*, %struct.file** %15, align 8
  %66 = icmp ne %struct.file* %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = load %struct.binder_proc*, %struct.binder_proc** %12, align 8
  %69 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.binder_thread*, %struct.binder_thread** %10, align 8
  %72 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i8*, i32, i32, i8*, ...) @binder_user_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73, i8* %76)
  %78 = load i32, i32* @EBADF, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %16, align 4
  br label %125

80:                                               ; preds = %62
  %81 = load %struct.binder_proc*, %struct.binder_proc** %12, align 8
  %82 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.binder_proc*, %struct.binder_proc** %13, align 8
  %85 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.file*, %struct.file** %15, align 8
  %88 = call i32 @security_binder_transfer_file(i32 %83, i32 %86, %struct.file* %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %16, align 4
  br label %122

94:                                               ; preds = %80
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.binder_txn_fd_fixup* @kzalloc(i32 16, i32 %95)
  store %struct.binder_txn_fd_fixup* %96, %struct.binder_txn_fd_fixup** %14, align 8
  %97 = load %struct.binder_txn_fd_fixup*, %struct.binder_txn_fd_fixup** %14, align 8
  %98 = icmp ne %struct.binder_txn_fd_fixup* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %121

102:                                              ; preds = %94
  %103 = load %struct.file*, %struct.file** %15, align 8
  %104 = load %struct.binder_txn_fd_fixup*, %struct.binder_txn_fd_fixup** %14, align 8
  %105 = getelementptr inbounds %struct.binder_txn_fd_fixup, %struct.binder_txn_fd_fixup* %104, i32 0, i32 2
  store %struct.file* %103, %struct.file** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.binder_txn_fd_fixup*, %struct.binder_txn_fd_fixup** %14, align 8
  %108 = getelementptr inbounds %struct.binder_txn_fd_fixup, %struct.binder_txn_fd_fixup* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.binder_txn_fd_fixup*, %struct.binder_txn_fd_fixup** %14, align 8
  %112 = getelementptr inbounds %struct.binder_txn_fd_fixup, %struct.binder_txn_fd_fixup* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @trace_binder_transaction_fd_send(%struct.binder_transaction* %109, i32 %110, i32 %113)
  %115 = load %struct.binder_txn_fd_fixup*, %struct.binder_txn_fd_fixup** %14, align 8
  %116 = getelementptr inbounds %struct.binder_txn_fd_fixup, %struct.binder_txn_fd_fixup* %115, i32 0, i32 0
  %117 = load %struct.binder_transaction*, %struct.binder_transaction** %9, align 8
  %118 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %117, i32 0, i32 1
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %6, align 4
  br label %128

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.file*, %struct.file** %15, align 8
  %124 = call i32 @fput(%struct.file* %123)
  br label %125

125:                                              ; preds = %122, %67
  br label %126

126:                                              ; preds = %125, %47
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %102
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @binder_user_error(i8*, i32, i32, i8*, ...) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @security_binder_transfer_file(i32, i32, %struct.file*) #1

declare dso_local %struct.binder_txn_fd_fixup* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_binder_transaction_fd_send(%struct.binder_transaction*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
