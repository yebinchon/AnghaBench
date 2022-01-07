; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_write_per_ring_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_write_per_ring_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_ring_info = type { i32, i32*, %struct.blkfront_info* }
%struct.blkfront_info = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"writing ring-ref\00", align 1
@RINGREF_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ring-ref%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"writing event-channel\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.blkfront_ring_info*, i8*)* @write_per_ring_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_per_ring_nodes(i32 %0, %struct.blkfront_ring_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_transaction, align 4
  %6 = alloca %struct.blkfront_ring_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blkfront_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  store i32 %0, i32* %15, align 4
  store %struct.blkfront_ring_info* %1, %struct.blkfront_ring_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %17 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %16, i32 0, i32 2
  %18 = load %struct.blkfront_info*, %struct.blkfront_info** %17, align 8
  store %struct.blkfront_info* %18, %struct.blkfront_info** %11, align 8
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %11, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %26 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xenbus_printf(i32 %31, i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %87

36:                                               ; preds = %23
  br label %75

37:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.blkfront_info*, %struct.blkfront_info** %11, align 8
  %41 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load i32, i32* @RINGREF_NAME_LEN, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = load i32, i32* @RINGREF_NAME_LEN, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %54 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xenbus_printf(i32 %61, i8* %52, i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 2, i32* %14, align 4
  br label %67

66:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %65, %66
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %14, align 4
  switch i32 %69, label %104 [
    i32 0, label %70
    i32 2, label %87
  ]

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %38

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %78 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xenbus_printf(i32 %81, i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %87

86:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %102

87:                                               ; preds = %85, %67, %35
  %88 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @xenbus_transaction_end(i32 %89, i32 1)
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.blkfront_info*, %struct.blkfront_info** %11, align 8
  %95 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @xenbus_dev_fatal(i32 %96, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %86
  %103 = load i32, i32* %4, align 4
  ret i32 %103

104:                                              ; preds = %67
  unreachable
}

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
