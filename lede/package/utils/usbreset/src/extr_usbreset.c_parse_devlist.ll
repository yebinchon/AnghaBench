; ModuleID = '/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_parse_devlist.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_parse_devlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbentry = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.dirent = type { i32* }

@parse_devlist.dev = internal global %struct.usbentry zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"busnum\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"devnum\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"idVendor\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"idProduct\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbentry* (i32*)* @parse_devlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbentry* @parse_devlist(i32* %0) #0 {
  %2 = alloca %struct.usbentry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %3, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.dirent* @readdir(i32* %7)
  store %struct.dirent* %8, %struct.dirent** %5, align 8
  %9 = load %struct.dirent*, %struct.dirent** %5, align 8
  %10 = icmp ne %struct.dirent* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store %struct.usbentry* null, %struct.usbentry** %2, align 8
  br label %100

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.dirent*, %struct.dirent** %5, align 8
  %15 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @isdigit(i32 %18) #3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.dirent*, %struct.dirent** %5, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @strchr(i32* %24, i8 signext 58)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i1 [ true, %13 ], [ %26, %21 ]
  br i1 %28, label %6, label %29

29:                                               ; preds = %27
  %30 = call i32 @memset(%struct.usbentry* @parse_devlist.dev, i32 0, i32 40)
  %31 = load %struct.dirent*, %struct.dirent** %5, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i8* @sysfs_attr(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strtoul(i8* %37, i32* null, i32 10)
  store i8* %38, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 3), align 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.dirent*, %struct.dirent** %5, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @sysfs_attr(i32* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @strtoul(i8* %46, i32* null, i32 10)
  store i8* %47, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 2), align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.dirent*, %struct.dirent** %5, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @sysfs_attr(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %52, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @strtoul(i8* %55, i32* null, i32 16)
  store i8* %56, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 1), align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.dirent*, %struct.dirent** %5, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @sysfs_attr(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = call i8* @strtoul(i8* %64, i32* null, i32 16)
  store i8* %65, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 0), align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.dirent*, %struct.dirent** %5, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @sysfs_attr(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 5), align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strcpy(i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.dirent*, %struct.dirent** %5, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @sysfs_attr(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %80, i8** %4, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 4), align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strcpy(i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i8*, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 3), align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i8*, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 2), align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i8*, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 1), align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i8*, i8** getelementptr inbounds (%struct.usbentry, %struct.usbentry* @parse_devlist.dev, i32 0, i32 0), align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store %struct.usbentry* @parse_devlist.dev, %struct.usbentry** %2, align 8
  br label %100

99:                                               ; preds = %95, %92, %89, %86
  store %struct.usbentry* null, %struct.usbentry** %2, align 8
  br label %100

100:                                              ; preds = %99, %98, %11
  %101 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  ret %struct.usbentry* %101
}

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i64 @strchr(i32*, i8 signext) #1

declare dso_local i32 @memset(%struct.usbentry*, i32, i32) #1

declare dso_local i8* @sysfs_attr(i32*, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
