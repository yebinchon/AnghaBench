; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_read.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32 }

@KNF_TYPE_FTP = common dso_local global i64 0, align 8
@KNF_TYPE_HTTP = common dso_local global i64 0, align 8
@KNF_TYPE_LOCAL = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @knet_read(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %117

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KNF_TYPE_FTP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @kftp_reconnect(%struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = call i32 @kftp_connect_file(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %35, %22
  br label %55

39:                                               ; preds = %16
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @KNF_TYPE_HTTP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = call i32 @khttp_connect_file(%struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KNF_TYPE_LOCAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %93, %61
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %83, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr i8, i8* %71, i64 %72
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @read(i32 %70, i8* %73, i64 %74)
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %10, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @EINTR, align 8
  %81 = load i64, i64* @errno, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %67, label %85

85:                                               ; preds = %83
  %86 = load i64, i64* %10, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i64 -1, i64* %4, align 8
  br label %117

89:                                               ; preds = %85
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %100

93:                                               ; preds = %89
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %9, align 8
  br label %63

100:                                              ; preds = %92, %63
  br label %108

101:                                              ; preds = %55
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @my_netread(i32 %104, i8* %105, i64 %106)
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %101, %100
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load i64, i64* %8, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %108, %88, %15
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @kftp_reconnect(%struct.TYPE_6__*) #1

declare dso_local i32 @kftp_connect_file(%struct.TYPE_6__*) #1

declare dso_local i32 @khttp_connect_file(%struct.TYPE_6__*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @my_netread(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
