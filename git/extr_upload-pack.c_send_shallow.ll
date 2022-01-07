; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_send_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_send_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_writer = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object }
%struct.object = type { i32, i32 }

@CLIENT_SHALLOW = common dso_local global i32 0, align 4
@NOT_SHALLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"shallow %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@shallow_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_writer*, %struct.commit_list*)* @send_shallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_shallow(%struct.packet_writer* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.packet_writer*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.packet_writer* %0, %struct.packet_writer** %3, align 8
  store %struct.commit_list* %1, %struct.commit_list** %4, align 8
  br label %6

6:                                                ; preds = %34, %2
  %7 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.object* %13, %struct.object** %5, align 8
  %14 = load %struct.object*, %struct.object** %5, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CLIENT_SHALLOW, align 4
  %18 = load i32, i32* @NOT_SHALLOW, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %9
  %23 = load %struct.packet_writer*, %struct.packet_writer** %3, align 8
  %24 = load %struct.object*, %struct.object** %5, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 1
  %26 = call i32 @oid_to_hex(i32* %25)
  %27 = call i32 @packet_writer_write(%struct.packet_writer* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @the_repository, align 4
  %29 = load %struct.object*, %struct.object** %5, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 1
  %31 = call i32 @register_shallow(i32 %28, i32* %30)
  %32 = load i32, i32* @shallow_nr, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @shallow_nr, align 4
  br label %34

34:                                               ; preds = %22, %9
  %35 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 0
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  store %struct.commit_list* %37, %struct.commit_list** %4, align 8
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local i32 @packet_writer_write(%struct.packet_writer*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @register_shallow(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
