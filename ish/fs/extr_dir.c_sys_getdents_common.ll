; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_dir.c_sys_getdents_common.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_dir.c_sys_getdents_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fd*, %struct.dir_entry*)* }
%struct.dir_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"getdents(%d, %#x, %#x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_ENOTDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c" {inode=%d, offset=%d, name=%s, type=%d, reclen=%d}\00", align 1
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getdents_common(i32 %0, i64 %1, i64 %2, i64 (i8*, i32, i8*, i8*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (i8*, i32, i8*, i8*, i32)*, align 8
  %10 = alloca %struct.fd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dir_entry, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 (i8*, i32, i8*, i8*, i32)* %3, i64 (i8*, i32, i8*, i8*, i32)** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (i8*, i32, i64, ...) @STRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.fd* @f_get(i32 %29)
  store %struct.fd* %30, %struct.fd** %10, align 8
  %31 = load %struct.fd*, %struct.fd** %10, align 8
  %32 = icmp eq %struct.fd* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @_EBADF, align 4
  store i32 %34, i32* %5, align 4
  br label %136

35:                                               ; preds = %4
  %36 = load %struct.fd*, %struct.fd** %10, align 8
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @S_ISDIR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.fd*, %struct.fd** %10, align 8
  %43 = getelementptr inbounds %struct.fd, %struct.fd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.fd*, %struct.dir_entry*)*, i32 (%struct.fd*, %struct.dir_entry*)** %45, align 8
  %47 = icmp eq i32 (%struct.fd*, %struct.dir_entry*)* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %35
  %49 = load i32, i32* @_ENOTDIR, align 4
  store i32 %49, i32* %5, align 4
  br label %136

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %127
  %53 = load %struct.fd*, %struct.fd** %10, align 8
  %54 = call i8* @fd_telldir(%struct.fd* %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %12, align 8
  %56 = load %struct.fd*, %struct.fd** %10, align 8
  %57 = getelementptr inbounds %struct.fd, %struct.fd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.fd*, %struct.dir_entry*)*, i32 (%struct.fd*, %struct.dir_entry*)** %59, align 8
  %61 = load %struct.fd*, %struct.fd** %10, align 8
  %62 = call i32 %60(%struct.fd* %61, %struct.dir_entry* %15)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %136

67:                                               ; preds = %52
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %128

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %15, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = sext i32 %74 to i64
  %76 = add i64 4, %75
  %77 = add i64 %76, 4
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %17, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %18, align 8
  %81 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %19, align 4
  %83 = load %struct.fd*, %struct.fd** %10, align 8
  %84 = call i8* @fd_telldir(%struct.fd* %83)
  store i8* %84, i8** %20, align 8
  %85 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %15, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %87 = load i64 (i8*, i32, i8*, i8*, i32)*, i64 (i8*, i32, i8*, i8*, i32)** %9, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load i8*, i8** %20, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i64 %87(i8* %80, i32 %88, i8* %89, i8* %90, i32 %91)
  store i64 %92, i64* %23, align 8
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 20
  br i1 %94, label %95, label %105

95:                                               ; preds = %71
  %96 = load i32, i32* %19, align 4
  %97 = load i8*, i8** %20, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load i8*, i8** %21, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i64, i64* %23, align 8
  %102 = call i32 (i8*, i32, i64, ...) @STRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %98, i8* %99, i32 %100, i64 %101)
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %95, %71
  %106 = load i64, i64* %23, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 3, i32* %24, align 4
  br label %124

110:                                              ; preds = %105
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %23, align 8
  %113 = call i64 @user_write(i64 %111, i8* %80, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @_EFAULT, align 4
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %124

117:                                              ; preds = %110
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %8, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %8, align 8
  store i32 0, i32* %24, align 4
  br label %124

124:                                              ; preds = %117, %115, %109
  %125 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %24, align 4
  switch i32 %126, label %138 [
    i32 0, label %127
    i32 3, label %128
    i32 1, label %136
  ]

127:                                              ; preds = %124
  br label %52

128:                                              ; preds = %124, %70
  %129 = load %struct.fd*, %struct.fd** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @fd_seekdir(%struct.fd* %129, i64 %130)
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %8, align 8
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %128, %124, %65, %48, %33
  %137 = load i32, i32* %5, align 4
  ret i32 %137

138:                                              ; preds = %124
  unreachable
}

declare dso_local i32 @STRACE(i8*, i32, i64, ...) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @fd_telldir(%struct.fd*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @user_write(i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fd_seekdir(%struct.fd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
