; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_thread_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_thread_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32, i32, i32 }
%struct.binder_thread = type { i32, i32, i32, i32, i32, i32, %struct.binder_transaction*, i32, i32 }
%struct.binder_transaction = type { i32, %struct.binder_transaction*, %struct.binder_thread*, %struct.binder_transaction*, %struct.TYPE_2__*, %struct.binder_thread*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@BINDER_DEBUG_DEAD_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"release %d:%d transaction %d %s, still active\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@BINDER_LOOPER_STATE_POLL = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@POLLFREE = common dso_local global i32 0, align 4
@BR_DEAD_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_proc*, %struct.binder_thread*)* @binder_thread_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_thread_release(%struct.binder_proc* %0, %struct.binder_thread* %1) #0 {
  %3 = alloca %struct.binder_proc*, align 8
  %4 = alloca %struct.binder_thread*, align 8
  %5 = alloca %struct.binder_transaction*, align 8
  %6 = alloca %struct.binder_transaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.binder_transaction*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %3, align 8
  store %struct.binder_thread* %1, %struct.binder_thread** %4, align 8
  store %struct.binder_transaction* null, %struct.binder_transaction** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.binder_transaction* null, %struct.binder_transaction** %8, align 8
  %9 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %10 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @binder_inner_proc_lock(i32 %11)
  %13 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %14 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %18 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %17, i32 0, i32 8
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %21 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %20, i32 0, i32 7
  %22 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %23 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %22, i32 0, i32 1
  %24 = call i32 @rb_erase(i32* %21, i32* %23)
  %25 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %26 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %25, i32 0, i32 6
  %27 = load %struct.binder_transaction*, %struct.binder_transaction** %26, align 8
  store %struct.binder_transaction* %27, %struct.binder_transaction** %5, align 8
  %28 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %29 = icmp ne %struct.binder_transaction* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %32 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %35 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %34, i32 0, i32 5
  %36 = load %struct.binder_thread*, %struct.binder_thread** %35, align 8
  %37 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %38 = icmp eq %struct.binder_thread* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  store %struct.binder_transaction* %40, %struct.binder_transaction** %6, align 8
  br label %41

41:                                               ; preds = %39, %30
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %44 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %43, i32 0, i32 0
  %45 = call i32 @__acquire(i32* %44)
  br label %46

46:                                               ; preds = %42, %41
  %47 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %48 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %128, %46
  %50 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %51 = icmp ne %struct.binder_transaction* %50, null
  br i1 %51, label %52, label %129

52:                                               ; preds = %49
  %53 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  store %struct.binder_transaction* %53, %struct.binder_transaction** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @BINDER_DEBUG_DEAD_TRANSACTION, align 4
  %57 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %58 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %61 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %64 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %67 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %66, i32 0, i32 5
  %68 = load %struct.binder_thread*, %struct.binder_thread** %67, align 8
  %69 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %70 = icmp eq %struct.binder_thread* %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 @binder_debug(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i8* %72)
  %74 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %75 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %74, i32 0, i32 5
  %76 = load %struct.binder_thread*, %struct.binder_thread** %75, align 8
  %77 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %78 = icmp eq %struct.binder_thread* %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %52
  %80 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %81 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %83 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %82, i32 0, i32 5
  store %struct.binder_thread* null, %struct.binder_thread** %83, align 8
  %84 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %85 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %90 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %94 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %93, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %94, align 8
  br label %95

95:                                               ; preds = %88, %79
  %96 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %97 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %96, i32 0, i32 3
  %98 = load %struct.binder_transaction*, %struct.binder_transaction** %97, align 8
  store %struct.binder_transaction* %98, %struct.binder_transaction** %5, align 8
  br label %114

99:                                               ; preds = %52
  %100 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %101 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %100, i32 0, i32 2
  %102 = load %struct.binder_thread*, %struct.binder_thread** %101, align 8
  %103 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %104 = icmp eq %struct.binder_thread* %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %107 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %106, i32 0, i32 2
  store %struct.binder_thread* null, %struct.binder_thread** %107, align 8
  %108 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %109 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %108, i32 0, i32 1
  %110 = load %struct.binder_transaction*, %struct.binder_transaction** %109, align 8
  store %struct.binder_transaction* %110, %struct.binder_transaction** %5, align 8
  br label %113

111:                                              ; preds = %99
  %112 = call i32 (...) @BUG()
  br label %113

113:                                              ; preds = %111, %105
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.binder_transaction*, %struct.binder_transaction** %8, align 8
  %116 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %119 = icmp ne %struct.binder_transaction* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %122 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %121, i32 0, i32 0
  %123 = call i32 @spin_lock(i32* %122)
  br label %128

124:                                              ; preds = %114
  %125 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %126 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %125, i32 0, i32 0
  %127 = call i32 @__acquire(i32* %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %49

129:                                              ; preds = %49
  %130 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %131 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %130, i32 0, i32 0
  %132 = call i32 @__release(i32* %131)
  %133 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %134 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BINDER_LOOPER_STATE_POLL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %141 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %140, i32 0, i32 4
  %142 = call i64 @waitqueue_active(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %146 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %145, i32 0, i32 4
  %147 = load i32, i32* @EPOLLHUP, align 4
  %148 = load i32, i32* @POLLFREE, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @wake_up_poll(i32* %146, i32 %149)
  br label %151

151:                                              ; preds = %144, %139, %129
  %152 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %153 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @binder_inner_proc_unlock(i32 %154)
  %156 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %157 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BINDER_LOOPER_STATE_POLL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %151
  %163 = call i32 (...) @synchronize_rcu()
  br label %164

164:                                              ; preds = %162, %151
  %165 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %166 = icmp ne %struct.binder_transaction* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %169 = load i32, i32* @BR_DEAD_REPLY, align 4
  %170 = call i32 @binder_send_failed_reply(%struct.binder_transaction* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %164
  %172 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %173 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %174 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %173, i32 0, i32 2
  %175 = call i32 @binder_release_work(%struct.binder_proc* %172, i32* %174)
  %176 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %177 = call i32 @binder_thread_dec_tmpref(%struct.binder_thread* %176)
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @binder_inner_proc_lock(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__acquire(i32*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__release(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_poll(i32*, i32) #1

declare dso_local i32 @binder_inner_proc_unlock(i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @binder_send_failed_reply(%struct.binder_transaction*, i32) #1

declare dso_local i32 @binder_release_work(%struct.binder_proc*, i32*) #1

declare dso_local i32 @binder_thread_dec_tmpref(%struct.binder_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
