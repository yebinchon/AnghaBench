; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_add_one_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_add_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.object_list = type { %struct.object_list*, %struct.object* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_list** (%struct.object*, %struct.object_list**)* @add_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_list** @add_one_object(%struct.object* %0, %struct.object_list** %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.object_list**, align 8
  %5 = alloca %struct.object_list*, align 8
  store %struct.object* %0, %struct.object** %3, align 8
  store %struct.object_list** %1, %struct.object_list*** %4, align 8
  %6 = call %struct.object_list* @xmalloc(i32 16)
  store %struct.object_list* %6, %struct.object_list** %5, align 8
  %7 = load %struct.object*, %struct.object** %3, align 8
  %8 = load %struct.object_list*, %struct.object_list** %5, align 8
  %9 = getelementptr inbounds %struct.object_list, %struct.object_list* %8, i32 0, i32 1
  store %struct.object* %7, %struct.object** %9, align 8
  %10 = load %struct.object_list**, %struct.object_list*** %4, align 8
  %11 = load %struct.object_list*, %struct.object_list** %10, align 8
  %12 = load %struct.object_list*, %struct.object_list** %5, align 8
  %13 = getelementptr inbounds %struct.object_list, %struct.object_list* %12, i32 0, i32 0
  store %struct.object_list* %11, %struct.object_list** %13, align 8
  %14 = load %struct.object_list*, %struct.object_list** %5, align 8
  %15 = load %struct.object_list**, %struct.object_list*** %4, align 8
  store %struct.object_list* %14, %struct.object_list** %15, align 8
  %16 = load %struct.object_list*, %struct.object_list** %5, align 8
  %17 = getelementptr inbounds %struct.object_list, %struct.object_list* %16, i32 0, i32 0
  ret %struct.object_list** %17
}

declare dso_local %struct.object_list* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
