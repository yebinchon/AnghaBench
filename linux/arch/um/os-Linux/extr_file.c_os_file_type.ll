; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_file.c_os_file_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_file.c_os_file_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uml_stat = type { i32 }

@OS_TYPE_DIR = common dso_local global i32 0, align 4
@OS_TYPE_SYMLINK = common dso_local global i32 0, align 4
@OS_TYPE_CHARDEV = common dso_local global i32 0, align 4
@OS_TYPE_BLOCKDEV = common dso_local global i32 0, align 4
@OS_TYPE_FIFO = common dso_local global i32 0, align 4
@OS_TYPE_SOCK = common dso_local global i32 0, align 4
@OS_TYPE_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_file_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uml_stat, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @os_stat_file(i8* %6, %struct.uml_stat* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @OS_TYPE_DIR, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISLNK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @OS_TYPE_SYMLINK, align 4
  store i32 %25, i32* %2, align 4
  br label %56

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISCHR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @OS_TYPE_CHARDEV, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISBLK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @OS_TYPE_BLOCKDEV, align 4
  store i32 %39, i32* %2, align 4
  br label %56

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISFIFO(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @OS_TYPE_FIFO, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.uml_stat, %struct.uml_stat* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISSOCK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @OS_TYPE_SOCK, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @OS_TYPE_FILE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52, %45, %38, %31, %24, %17, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @os_stat_file(i8*, %struct.uml_stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
