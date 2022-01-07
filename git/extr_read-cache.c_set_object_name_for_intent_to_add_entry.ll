; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_set_object_name_for_intent_to_add_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_set_object_name_for_intent_to_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@blob_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot create an empty blob in the object database\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_object_name_for_intent_to_add_entry(%struct.cache_entry* %0) #0 {
  %2 = alloca %struct.cache_entry*, align 8
  %3 = alloca %struct.object_id, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %2, align 8
  %4 = load i32, i32* @blob_type, align 4
  %5 = call i64 @write_object_file(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %4, %struct.object_id* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @die(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %12 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %11, i32 0, i32 0
  %13 = call i32 @oidcpy(i32* %12, %struct.object_id* %3)
  ret void
}

declare dso_local i64 @write_object_file(i8*, i32, i32, %struct.object_id*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
