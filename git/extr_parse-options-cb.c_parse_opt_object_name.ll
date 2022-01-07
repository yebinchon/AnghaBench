; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_object_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_object_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"malformed object name '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_object_name(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.option*, %struct.option** %5, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @oid_array_clear(i32 %14)
  store i32 0, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %33

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @get_oid(i8* %21, %struct.object_id* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @error(i32 %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @oid_array_append(i32 %31, %struct.object_id* %8)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %24, %19, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @oid_array_clear(i32) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_array_append(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
