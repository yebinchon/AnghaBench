; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_set_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_set_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, i32*, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.remote = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch*)* @set_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_merge(%struct.branch* %0) #0 {
  %2 = alloca %struct.branch*, align 8
  %3 = alloca %struct.remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca i32, align 4
  store %struct.branch* %0, %struct.branch** %2, align 8
  %7 = load %struct.branch*, %struct.branch** %2, align 8
  %8 = icmp ne %struct.branch* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %138

10:                                               ; preds = %1
  %11 = load %struct.branch*, %struct.branch** %2, align 8
  %12 = getelementptr inbounds %struct.branch, %struct.branch* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = icmp ne %struct.TYPE_2__** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %138

16:                                               ; preds = %10
  %17 = load %struct.branch*, %struct.branch** %2, align 8
  %18 = getelementptr inbounds %struct.branch, %struct.branch* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.branch*, %struct.branch** %2, align 8
  %23 = getelementptr inbounds %struct.branch, %struct.branch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.branch*, %struct.branch** %2, align 8
  %28 = getelementptr inbounds %struct.branch, %struct.branch* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %138

29:                                               ; preds = %21
  %30 = load %struct.branch*, %struct.branch** %2, align 8
  %31 = getelementptr inbounds %struct.branch, %struct.branch* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.remote* @remote_get(i32 %32)
  store %struct.remote* %33, %struct.remote** %3, align 8
  %34 = load %struct.branch*, %struct.branch** %2, align 8
  %35 = getelementptr inbounds %struct.branch, %struct.branch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @xcalloc(i32 %36, i32 8)
  %38 = bitcast i8* %37 to %struct.TYPE_2__**
  %39 = load %struct.branch*, %struct.branch** %2, align 8
  %40 = getelementptr inbounds %struct.branch, %struct.branch* %39, i32 0, i32 2
  store %struct.TYPE_2__** %38, %struct.TYPE_2__*** %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %135, %29
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.branch*, %struct.branch** %2, align 8
  %44 = getelementptr inbounds %struct.branch, %struct.branch* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %138

47:                                               ; preds = %41
  %48 = call i8* @xcalloc(i32 1, i32 16)
  %49 = bitcast i8* %48 to %struct.TYPE_2__*
  %50 = load %struct.branch*, %struct.branch** %2, align 8
  %51 = getelementptr inbounds %struct.branch, %struct.branch* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.branch*, %struct.branch** %2, align 8
  %57 = getelementptr inbounds %struct.branch, %struct.branch* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @xstrdup(i32 %62)
  %64 = load %struct.branch*, %struct.branch** %2, align 8
  %65 = getelementptr inbounds %struct.branch, %struct.branch* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %63, i8** %71, align 8
  %72 = load %struct.remote*, %struct.remote** %3, align 8
  %73 = load %struct.branch*, %struct.branch** %2, align 8
  %74 = getelementptr inbounds %struct.branch, %struct.branch* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = call i32 @remote_find_tracking(%struct.remote* %72, %struct.TYPE_2__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %47
  %83 = load %struct.branch*, %struct.branch** %2, align 8
  %84 = getelementptr inbounds %struct.branch, %struct.branch* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strcmp(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %47
  br label %135

89:                                               ; preds = %82
  %90 = load %struct.branch*, %struct.branch** %2, align 8
  %91 = getelementptr inbounds %struct.branch, %struct.branch* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.branch*, %struct.branch** %2, align 8
  %98 = getelementptr inbounds %struct.branch, %struct.branch* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strlen(i32 %103)
  %105 = call i32 @dwim_ref(i32 %96, i32 %104, %struct.object_id* %5, i8** %4)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %117

107:                                              ; preds = %89
  %108 = load i8*, i8** %4, align 8
  %109 = load %struct.branch*, %struct.branch** %2, align 8
  %110 = getelementptr inbounds %struct.branch, %struct.branch* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %111, i64 %113
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i8* %108, i8** %116, align 8
  br label %134

117:                                              ; preds = %89
  %118 = load %struct.branch*, %struct.branch** %2, align 8
  %119 = getelementptr inbounds %struct.branch, %struct.branch* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @xstrdup(i32 %124)
  %126 = load %struct.branch*, %struct.branch** %2, align 8
  %127 = getelementptr inbounds %struct.branch, %struct.branch* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %128, i64 %130
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i8* %125, i8** %133, align 8
  br label %134

134:                                              ; preds = %117, %107
  br label %135

135:                                              ; preds = %134, %88
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %41

138:                                              ; preds = %9, %15, %26, %41
  ret void
}

declare dso_local %struct.remote* @remote_get(i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @remote_find_tracking(%struct.remote*, %struct.TYPE_2__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dwim_ref(i32, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
