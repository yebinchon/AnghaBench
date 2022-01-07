; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_refspec_item_init_or_die.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_refspec_item_init_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec_item = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid refspec '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refspec_item_init_or_die(%struct.refspec_item* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.refspec_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.refspec_item* %0, %struct.refspec_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.refspec_item*, %struct.refspec_item** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @refspec_item_init(%struct.refspec_item* %7, i8* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @die(i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @refspec_item_init(%struct.refspec_item*, i8*, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
