; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-dump.c_dump_ack_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-dump.c_dump_ack_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_obj = type { i32, i32 }
%struct.dump_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dump_obj*, %struct.dump_attribute*, i8*, i64)* @dump_ack_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dump_ack_store(%struct.dump_obj* %0, %struct.dump_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.dump_obj*, align 8
  %6 = alloca %struct.dump_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dump_obj* %0, %struct.dump_obj** %5, align 8
  store %struct.dump_attribute* %1, %struct.dump_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.dump_obj*, %struct.dump_obj** %5, align 8
  %10 = getelementptr inbounds %struct.dump_obj, %struct.dump_obj* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dump_send_ack(i32 %11)
  %13 = load %struct.dump_obj*, %struct.dump_obj** %5, align 8
  %14 = getelementptr inbounds %struct.dump_obj, %struct.dump_obj* %13, i32 0, i32 0
  %15 = load %struct.dump_attribute*, %struct.dump_attribute** %6, align 8
  %16 = getelementptr inbounds %struct.dump_attribute, %struct.dump_attribute* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_file_self(i32* %14, i32* %16)
  %18 = load %struct.dump_obj*, %struct.dump_obj** %5, align 8
  %19 = getelementptr inbounds %struct.dump_obj, %struct.dump_obj* %18, i32 0, i32 0
  %20 = call i32 @kobject_put(i32* %19)
  %21 = load i64, i64* %8, align 8
  ret i64 %21
}

declare dso_local i32 @dump_send_ack(i32) #1

declare dso_local i32 @sysfs_remove_file_self(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
