; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_unregister_asymmetric_key_parser.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_unregister_asymmetric_key_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_parser = type { i32, i32 }

@asymmetric_key_parsers_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Asymmetric key parser '%s' unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_asymmetric_key_parser(%struct.asymmetric_key_parser* %0) #0 {
  %2 = alloca %struct.asymmetric_key_parser*, align 8
  store %struct.asymmetric_key_parser* %0, %struct.asymmetric_key_parser** %2, align 8
  %3 = call i32 @down_write(i32* @asymmetric_key_parsers_sem)
  %4 = load %struct.asymmetric_key_parser*, %struct.asymmetric_key_parser** %2, align 8
  %5 = getelementptr inbounds %struct.asymmetric_key_parser, %struct.asymmetric_key_parser* %4, i32 0, i32 1
  %6 = call i32 @list_del(i32* %5)
  %7 = call i32 @up_write(i32* @asymmetric_key_parsers_sem)
  %8 = load %struct.asymmetric_key_parser*, %struct.asymmetric_key_parser** %2, align 8
  %9 = getelementptr inbounds %struct.asymmetric_key_parser, %struct.asymmetric_key_parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
