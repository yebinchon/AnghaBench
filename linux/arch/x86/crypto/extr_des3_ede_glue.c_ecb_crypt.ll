; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c_ecb_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c_ecb_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32*)* @ecb_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_crypt(%struct.skcipher_request* %0, i32* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_walk, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %13 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %12, i32 0)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %84, %2
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %28, 3
  %30 = icmp uge i32 %27, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @des3_ede_x86_64_crypt_blk_3way(i32* %33, i32* %34, i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = mul i32 %37, 3
  %39 = load i32*, i32** %9, align 8
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul i32 %42, 3
  %44 = load i32*, i32** %10, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %5, align 4
  %48 = mul i32 %47, 3
  %49 = load i32, i32* %7, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul i32 %53, 3
  %55 = icmp uge i32 %52, %54
  br i1 %55, label %32, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %84

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %18
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @des3_ede_x86_64_crypt_blk(i32* %64, i32* %65, i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %9, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %63, label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %85)
  store i32 %86, i32* %8, align 4
  br label %14

87:                                               ; preds = %14
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @des3_ede_x86_64_crypt_blk_3way(i32*, i32*, i32*) #1

declare dso_local i32 @des3_ede_x86_64_crypt_blk(i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
