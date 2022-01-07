; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_ifx_ptm_proc_read_regs.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_ifx_ptm_proc_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"EMA:\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"  SB_MST_PRI0 - 0x%08X, SB_MST_PRI1 - 0x%08X\0A\00", align 1
@SB_MST_PRI0 = common dso_local global i32 0, align 4
@SB_MST_PRI1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"  EMA_CMDCFG  - 0x%08X, EMA_DATACFG - 0x%08X\0A\00", align 1
@EMA_CMDCFG = common dso_local global i32 0, align 4
@EMA_DATACFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"  EMA_IER     - 0x%08X, EMA_CFG     - 0x%08X\0A\00", align 1
@EMA_IER = common dso_local global i32 0, align 4
@EMA_CFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Mailbox:\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"  MBOX_IGU1_IER - 0x%08X, MBOX_IGU1_ISR - 0x%08X\0A\00", align 1
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@MBOX_IGU1_ISR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"  MBOX_IGU3_IER - 0x%08X, MBOX_IGU3_ISR - 0x%08X\0A\00", align 1
@MBOX_IGU3_IER = common dso_local global i32 0, align 4
@MBOX_IGU3_ISR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"TC:\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  RFBI_CFG  - 0x%08X\0A\00", align 1
@RFBI_CFG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [62 x i8] c"  SFSM_DBA0 - 0x%08X, SFSM_CBA0 - 0x%08X, SFSM_CFG0 - 0x%08X\0A\00", align 1
@SFSM_DBA0 = common dso_local global i32 0, align 4
@SFSM_CBA0 = common dso_local global i32 0, align 4
@SFSM_CFG0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [62 x i8] c"  SFSM_DBA1 - 0x%08X, SFSM_CBA1 - 0x%08X, SFSM_CFG1 - 0x%08X\0A\00", align 1
@SFSM_DBA1 = common dso_local global i32 0, align 4
@SFSM_CBA1 = common dso_local global i32 0, align 4
@SFSM_CFG1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [62 x i8] c"  FFSM_DBA0 - 0x%08X, FFSM_CFG0 - 0x%08X, IDLE_HEAD - 0x%08X\0A\00", align 1
@FFSM_DBA0 = common dso_local global i32 0, align 4
@FFSM_CFG0 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [62 x i8] c"  FFSM_DBA1 - 0x%08X, FFSM_CFG1 - 0x%08X, IDLE_HEAD - 0x%08X\0A\00", align 1
@FFSM_DBA1 = common dso_local global i32 0, align 4
@FFSM_CFG1 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"DPlus:\0A\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"  DM_RXDB    - 0x%08X, DM_RXCB     - 0x%08X, DM_RXCFG - 0x%08X\0A\00", align 1
@DM_RXDB = common dso_local global i32 0, align 4
@DM_RXCB = common dso_local global i32 0, align 4
@DM_RXCFG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"  DM_RXPGCNT - 0x%08X, DM_RXPKTCNT - 0x%08X\0A\00", align 1
@DM_RXPGCNT = common dso_local global i32 0, align 4
@DM_RXPKTCNT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [64 x i8] c"  DS_RXDB    - 0x%08X, DS_RXCB     - 0x%08X, DS_RXCFG - 0x%08X\0A\00", align 1
@DS_RXDB = common dso_local global i32 0, align 4
@DS_RXCB = common dso_local global i32 0, align 4
@DS_RXCFG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"  DS_RXPGCNT - 0x%08X\0A\00", align 1
@DS_RXPGCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifx_ptm_proc_read_regs(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i32, i32* %13, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i64 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @SB_MST_PRI0, align 4
  %34 = call i32 @IFX_REG_R32(i32 %33)
  %35 = load i32, i32* @SB_MST_PRI1, align 4
  %36 = call i32 @IFX_REG_R32(i32 %35)
  %37 = call i64 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* @EMA_CMDCFG, align 4
  %50 = call i32 @IFX_REG_R32(i32 %49)
  %51 = load i32, i32* @EMA_DATACFG, align 4
  %52 = call i32 @IFX_REG_R32(i32 %51)
  %53 = call i64 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* @EMA_IER, align 4
  %66 = call i32 @IFX_REG_R32(i32 %65)
  %67 = load i32, i32* @EMA_CFG, align 4
  %68 = call i32 @IFX_REG_R32(i32 %67)
  %69 = call i64 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i64 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* @MBOX_IGU1_IER, align 4
  %94 = call i32 @IFX_REG_R32(i32 %93)
  %95 = load i32, i32* @MBOX_IGU1_ISR, align 4
  %96 = call i32 @IFX_REG_R32(i32 %95)
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* @MBOX_IGU3_IER, align 4
  %110 = call i32 @IFX_REG_R32(i32 %109)
  %111 = load i32, i32* @MBOX_IGU3_ISR, align 4
  %112 = call i32 @IFX_REG_R32(i32 %111)
  %113 = call i64 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i64 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i32, i32* @RFBI_CFG, align 4
  %138 = call i32 @IFX_REG_R32(i32 %137)
  %139 = call i64 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* @SFSM_DBA0, align 4
  %152 = call i32 @IFX_REG_R32(i32 %151)
  %153 = load i32, i32* @SFSM_CBA0, align 4
  %154 = call i32 @IFX_REG_R32(i32 %153)
  %155 = load i32, i32* @SFSM_CFG0, align 4
  %156 = call i32 @IFX_REG_R32(i32 %155)
  %157 = call i64 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %152, i32 %154, i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %13, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i32, i32* @SFSM_DBA1, align 4
  %170 = call i32 @IFX_REG_R32(i32 %169)
  %171 = load i32, i32* @SFSM_CBA1, align 4
  %172 = call i32 @IFX_REG_R32(i32 %171)
  %173 = load i32, i32* @SFSM_CFG1, align 4
  %174 = call i32 @IFX_REG_R32(i32 %173)
  %175 = call i64 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %170, i32 %172, i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %13, align 4
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* @FFSM_DBA0, align 4
  %188 = call i32 @IFX_REG_R32(i32 %187)
  %189 = load i32, i32* @FFSM_CFG0, align 4
  %190 = call i32 @IFX_REG_R32(i32 %189)
  %191 = load i32, i32* @FFSM_IDLE_HEAD_BC0, align 4
  %192 = call i32 @IFX_REG_R32(i32 %191)
  %193 = call i64 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %188, i32 %190, i32 %192)
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %13, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* @FFSM_DBA1, align 4
  %206 = call i32 @IFX_REG_R32(i32 %205)
  %207 = load i32, i32* @FFSM_CFG1, align 4
  %208 = call i32 @IFX_REG_R32(i32 %207)
  %209 = load i32, i32* @FFSM_IDLE_HEAD_BC1, align 4
  %210 = call i32 @IFX_REG_R32(i32 %209)
  %211 = call i64 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %206, i32 %208, i32 %210)
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %13, align 4
  %216 = load i8*, i8** %7, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = call i64 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %13, align 4
  %228 = load i8*, i8** %7, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i32, i32* @DM_RXDB, align 4
  %236 = call i32 @IFX_REG_R32(i32 %235)
  %237 = load i32, i32* @DM_RXCB, align 4
  %238 = call i32 @IFX_REG_R32(i32 %237)
  %239 = load i32, i32* @DM_RXCFG, align 4
  %240 = call i32 @IFX_REG_R32(i32 %239)
  %241 = call i64 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i32 %236, i32 %238, i32 %240)
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %13, align 4
  %246 = load i8*, i8** %7, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i32, i32* @DM_RXPGCNT, align 4
  %254 = call i32 @IFX_REG_R32(i32 %253)
  %255 = load i32, i32* @DM_RXPKTCNT, align 4
  %256 = call i32 @IFX_REG_R32(i32 %255)
  %257 = call i64 (i8*, i8*, ...) @sprintf(i8* %252, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 %254, i32 %256)
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %13, align 4
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i32, i32* @DS_RXDB, align 4
  %270 = call i32 @IFX_REG_R32(i32 %269)
  %271 = load i32, i32* @DS_RXCB, align 4
  %272 = call i32 @IFX_REG_R32(i32 %271)
  %273 = load i32, i32* @DS_RXCFG, align 4
  %274 = call i32 @IFX_REG_R32(i32 %273)
  %275 = call i64 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i32 %270, i32 %272, i32 %274)
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %13, align 4
  %280 = load i8*, i8** %7, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i32, i32* @DS_RXPGCNT, align 4
  %288 = call i32 @IFX_REG_R32(i32 %287)
  %289 = call i64 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %13, align 4
  %294 = load i32*, i32** %11, align 8
  store i32 1, i32* %294, align 4
  %295 = load i32, i32* %13, align 4
  ret i32 %295
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @IFX_REG_R32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
