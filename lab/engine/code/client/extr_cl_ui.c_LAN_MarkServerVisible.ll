; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_MarkServerVisible.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_MarkServerVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @LAN_MarkServerVisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LAN_MarkServerVisible(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  store i32 %12, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %24 [
    i32 129, label %14
    i32 128, label %17
    i32 130, label %17
    i32 131, label %21
  ]

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  br label %24

17:                                               ; preds = %11, %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  %20 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  br label %24

24:                                               ; preds = %11, %21, %17, %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %28

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %24
  br label %92

44:                                               ; preds = %3
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %91 [
    i32 129, label %46
    i32 128, label %61
    i32 130, label %61
    i32 131, label %76
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %49, %46
  br label %91

61:                                               ; preds = %44, %44
  %62 = load i32, i32* %5, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i8* %69, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %64, %61
  br label %91

76:                                               ; preds = %44
  %77 = load i32, i32* %5, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* %84, i8** %89, align 8
  br label %90

90:                                               ; preds = %83, %79, %76
  br label %91

91:                                               ; preds = %44, %90, %75, %60
  br label %92

92:                                               ; preds = %91, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
