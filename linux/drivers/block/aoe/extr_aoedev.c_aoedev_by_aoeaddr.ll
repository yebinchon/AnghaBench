; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_aoedev_by_aoeaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_aoedev_by_aoeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i8*, i32, i32, i32, i32, %struct.aoedev*, i32, i32, i8*, i32, i32*, i8*, i8*, i32*, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@devlist_lock = common dso_local global i32 0, align 4
@devlist = common dso_local global %struct.aoedev* null, align 8
@DEVFL_TKILL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NTARGETS = common dso_local global i32 0, align 4
@aoecmd_sleepwork = common dso_local global i32 0, align 4
@dummy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NFACTIVE = common dso_local global i32 0, align 4
@RTTAVG_INIT = common dso_local global i32 0, align 4
@RTTDEV_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aoedev* @aoedev_by_aoeaddr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aoedev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @devlist_lock, i8* %11)
  %13 = load %struct.aoedev*, %struct.aoedev** @devlist, align 8
  store %struct.aoedev* %13, %struct.aoedev** %7, align 8
  br label %14

14:                                               ; preds = %52, %3
  %15 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %16 = icmp ne %struct.aoedev* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %19 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %25 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %31 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %30, i32 0, i32 17
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %34 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEVFL_TKILL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %41 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %40, i32 0, i32 17
  %42 = call i32 @spin_unlock(i32* %41)
  store %struct.aoedev* null, %struct.aoedev** %7, align 8
  br label %165

43:                                               ; preds = %29
  %44 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %45 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %49 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %48, i32 0, i32 17
  %50 = call i32 @spin_unlock(i32* %49)
  br label %56

51:                                               ; preds = %23, %17
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %54 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %53, i32 0, i32 5
  %55 = load %struct.aoedev*, %struct.aoedev** %54, align 8
  store %struct.aoedev* %55, %struct.aoedev** %7, align 8
  br label %14

56:                                               ; preds = %43, %14
  %57 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %58 = icmp ne %struct.aoedev* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @minor_get(i8** %10, i8* %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %59, %56
  br label %165

68:                                               ; preds = %62
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i8* @kcalloc(i32 1, i32 112, i32 %69)
  %71 = bitcast i8* %70 to %struct.aoedev*
  store %struct.aoedev* %71, %struct.aoedev** %7, align 8
  %72 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %73 = icmp ne %struct.aoedev* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %165

75:                                               ; preds = %68
  %76 = load i32, i32* @NTARGETS, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i8* @kcalloc(i32 %76, i32 1, i32 %77)
  %79 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %80 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %82 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %81, i32 0, i32 11
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %87 = call i32 @kfree(%struct.aoedev* %86)
  store %struct.aoedev* null, %struct.aoedev** %7, align 8
  br label %165

88:                                               ; preds = %75
  %89 = load i32, i32* @NTARGETS, align 4
  %90 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %91 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %93 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %92, i32 0, i32 18
  %94 = load i32, i32* @aoecmd_sleepwork, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %97 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %96, i32 0, i32 17
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %100 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %99, i32 0, i32 16
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %103 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %102, i32 0, i32 15
  %104 = call i32 @skb_queue_head_init(i32* %103)
  %105 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %106 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %105, i32 0, i32 14
  %107 = load i32, i32* @dummy_timer, align 4
  %108 = call i32 @timer_setup(%struct.TYPE_3__* %106, i32 %107, i32 0)
  %109 = load i64, i64* @jiffies, align 8
  %110 = load i64, i64* @HZ, align 8
  %111 = add nsw i64 %109, %110
  %112 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %113 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %112, i32 0, i32 14
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %116 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %115, i32 0, i32 14
  %117 = call i32 @add_timer(%struct.TYPE_3__* %116)
  %118 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %119 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %118, i32 0, i32 13
  store i32* null, i32** %119, align 8
  %120 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %121 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %120, i32 0, i32 11
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %124 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %123, i32 0, i32 12
  store i8* %122, i8** %124, align 8
  %125 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %126 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %125, i32 0, i32 3
  store i32 1, i32* %126, align 8
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %139, %88
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @NFACTIVE, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %133 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %132, i32 0, i32 10
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %127

142:                                              ; preds = %127
  %143 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %144 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %143, i32 0, i32 9
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  %146 = load i8*, i8** %10, align 8
  %147 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %148 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %147, i32 0, i32 8
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %151 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %154 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @RTTAVG_INIT, align 4
  %156 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %157 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @RTTDEV_INIT, align 4
  %159 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %160 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 8
  %161 = load %struct.aoedev*, %struct.aoedev** @devlist, align 8
  %162 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %163 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %162, i32 0, i32 5
  store %struct.aoedev* %161, %struct.aoedev** %163, align 8
  %164 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  store %struct.aoedev* %164, %struct.aoedev** @devlist, align 8
  br label %165

165:                                              ; preds = %142, %85, %74, %67, %39
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* @devlist_lock, i8* %166)
  %168 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  ret %struct.aoedev* %168
}

declare dso_local i32 @spin_lock_irqsave(i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @minor_get(i8**, i8*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.aoedev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
