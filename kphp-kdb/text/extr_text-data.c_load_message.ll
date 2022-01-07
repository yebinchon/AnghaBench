; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imessage = type { i32 }
%struct.TYPE_4__ = type { %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_message(%struct.imessage* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imessage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.file_user_list_entry*, align 8
  store %struct.imessage* %0, %struct.imessage** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @conv_uid(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %39

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_4__* @get_user(i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %26, align 8
  store %struct.file_user_list_entry* %27, %struct.file_user_list_entry** %11, align 8
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %29)
  store %struct.file_user_list_entry* %30, %struct.file_user_list_entry** %11, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.imessage*, %struct.imessage** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @load_message_internal(%struct.imessage* %32, %struct.TYPE_4__* %33, %struct.file_user_list_entry* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_4__* @get_user(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local i32 @load_message_internal(%struct.imessage*, %struct.TYPE_4__*, %struct.file_user_list_entry*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
