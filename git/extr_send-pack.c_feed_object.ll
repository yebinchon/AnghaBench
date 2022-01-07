; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_feed_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_feed_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@OBJECT_INFO_SKIP_FETCH_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i32*, i32)* @feed_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feed_object(%struct.object_id* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.object_id*, %struct.object_id** %4, align 8
  %11 = load i32, i32* @OBJECT_INFO_SKIP_FETCH_OBJECT, align 4
  %12 = call i32 @has_object_file_with_flags(%struct.object_id* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %28

15:                                               ; preds = %9, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @putc(i8 signext 94, i32* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.object_id*, %struct.object_id** %4, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fputs(i32 %23, i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @putc(i8 signext 10, i32* %26)
  br label %28

28:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @has_object_file_with_flags(%struct.object_id*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
