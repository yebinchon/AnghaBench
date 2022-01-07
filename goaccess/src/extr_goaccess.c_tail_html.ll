; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_tail_html.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_tail_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@gdns_thread = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@holder = common dso_local global i32 0, align 4
@glog = common dso_local global i32 0, align 4
@gwswriter = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tail_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tail_html() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdns_thread, i32 0, i32 0))
  %3 = call i32 @free_holder(i32* @holder)
  %4 = call i32 @pthread_cond_broadcast(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdns_thread, i32 0, i32 1))
  %5 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdns_thread, i32 0, i32 0))
  %6 = call i32 (...) @allocate_holder()
  %7 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdns_thread, i32 0, i32 0))
  %8 = load i32, i32* @glog, align 4
  %9 = load i32, i32* @holder, align 4
  %10 = call i8* @get_json(i32 %8, i32 %9, i32 0)
  store i8* %10, i8** %1, align 8
  %11 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdns_thread, i32 0, i32 0))
  %12 = load i8*, i8** %1, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %25

15:                                               ; preds = %0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gwswriter, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @broadcast_holder(i32 %18, i8* %19, i32 %21)
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @free_holder(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @allocate_holder(...) #1

declare dso_local i8* @get_json(i32, i32, i32) #1

declare dso_local i32 @broadcast_holder(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
