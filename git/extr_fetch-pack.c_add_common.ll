; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_add_common.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_add_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.oidset = type { i32 }
%struct.oidset_iter = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"have %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.oidset*)* @add_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_common(%struct.strbuf* %0, %struct.oidset* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.oidset*, align 8
  %5 = alloca %struct.oidset_iter, align 4
  %6 = alloca %struct.object_id*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.oidset* %1, %struct.oidset** %4, align 8
  %7 = load %struct.oidset*, %struct.oidset** %4, align 8
  %8 = call i32 @oidset_iter_init(%struct.oidset* %7, %struct.oidset_iter* %5)
  br label %9

9:                                                ; preds = %12, %2
  %10 = call %struct.object_id* @oidset_iter_next(%struct.oidset_iter* %5)
  store %struct.object_id* %10, %struct.object_id** %6, align 8
  %11 = icmp ne %struct.object_id* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = load %struct.object_id*, %struct.object_id** %6, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = call i32 @packet_buf_write(%struct.strbuf* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %9

17:                                               ; preds = %9
  ret void
}

declare dso_local i32 @oidset_iter_init(%struct.oidset*, %struct.oidset_iter*) #1

declare dso_local %struct.object_id* @oidset_iter_next(%struct.oidset_iter*) #1

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
